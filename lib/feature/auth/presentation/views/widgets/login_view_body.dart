import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/feature/auth/data/manager/firebase_auth.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/continue_with_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/underbutton_sentence.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController email = TextEditingController();

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
              hintText: 'Email Address',
              controller: email,
            ),
            const SizedBox(height: 16,),
            CustomButton(
              onTap: (){
                GoRouter.of(context).go('/${AppRouter.kPasswordLoginView}', extra: email.text);
              },
            ),
            const SizedBox(height: 16,),
            UnderButtonSentence(
              firstText: 'Dont have an Account ?',
              secondText: 'Create One',
              onTap: () {
               GoRouter.of(context).push('/${AppRouter.kRegisterView}');
              },
            ),
            const SizedBox(height: 72,),
            ContinueWithButton(
              txt: 'Google',
              img: 'assets/images/google.png',
              onTap: ()async{
                await Authentication.signInWithGoogle();
              },
            ),
            const SizedBox(height: 12,),
            const ContinueWithButton(
              txt: 'Facebook',
              img: 'assets/images/facebook.png',),
            const SizedBox(height: 12,),
            const ContinueWithButton(
              txt: 'Facebook',
              img: 'assets/images/apple.png',),
          ],
        ),
      ),
    );
  }
}