import 'package:e_commerce/feature/auth/presentation/views/widgets/continue_with_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/underbutton_sentence.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 70,),
          Text('Sign in', style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),),
          SizedBox(height: 32,),
          CustomTextFormField(),
          SizedBox(height: 16,),
          CustomButton(),
          SizedBox(height: 16,),
          UnderButtonSentence(),
          SizedBox(height: 72,),
          ContinueWithButton(
            txt: 'Apple',
            img: 'assets/images/apple.png',
          ),
          SizedBox(height: 12,),
          ContinueWithButton(
            txt: 'Google',
            img: 'assets/images/google.png',
          ),
          SizedBox(height: 12,),
          ContinueWithButton(
            txt: 'Facebook',
            img: 'assets/images/facebook.png',
          ),
        ],
      ),
    );
  }
}