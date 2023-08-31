import 'package:e_commerce/feature/auth/presentation/views/forgot_password_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/underbutton_sentence.dart';
import 'package:flutter/material.dart';

class LoginViewPasswordSectionBody extends StatelessWidget {
  const LoginViewPasswordSectionBody({super.key});

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
            const CustomTextFormField(
              hintText: 'Password',
            ),
            const SizedBox(height: 16,),
            const CustomButton(),
            const SizedBox(height: 16,),
            UnderButtonSentence(
              firstText: 'Forgot Password ?',
              secondText: 'Reset',
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordView()));
              },
            ),
          ],
        ),
      ),
      );
  }
}