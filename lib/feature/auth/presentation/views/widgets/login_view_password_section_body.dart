import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/feature/auth/data/manager/firebase_auth.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/underbutton_sentence.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewPasswordSectionBody extends StatefulWidget {
  const LoginViewPasswordSectionBody({super.key, required this.email});
  final String email;

  @override
  State<LoginViewPasswordSectionBody> createState() => _LoginViewPasswordSectionBodyState();
}

class _LoginViewPasswordSectionBodyState extends State<LoginViewPasswordSectionBody> {
  TextEditingController password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 70,),
            const Text('Sign in', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),),
            const SizedBox(height: 32,),
            CustomTextFormField(
              hintText: 'Password',
              controller: password,
            ),
            const SizedBox(height: 16,),
            CustomButton(
              onTap: () async{
                await Authentication.signIn(widget.email, password.text);
                GoRouter.of(context).pushReplacement('/${AppRouter.kHomeView}');
              },
            ),
            const SizedBox(height: 16,),
            UnderButtonSentence(
              firstText: 'Forgot Password ?',
              secondText: 'Reset',
              onTap: (){
                GoRouter.of(context).pushReplacement('/${AppRouter.kForgotPasswordView}');
              },
            ),
          ],
        ),
      ),
      );
  }
}