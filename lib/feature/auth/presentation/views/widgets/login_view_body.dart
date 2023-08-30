import 'package:e_commerce/feature/auth/presentation/views/login_view_password_section.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/continue_with_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/underbutton_sentence.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            const CustomTextFormField(),
            const SizedBox(height: 16,),
            const CustomButton(),
            const SizedBox(height: 16,),
            UnderButtonSentence(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginViewPasswordSection()));
              },
            ),
            const SizedBox(height: 72,),
            const ContinueWithButton(
              txt: 'Apple',
              img: 'assets/images/apple.png',
            ),
            const SizedBox(height: 12,),
            const ContinueWithButton(
              txt: 'Google',
              img: 'assets/images/google.png',
            ),
            const SizedBox(height: 12,),
            const ContinueWithButton(
              txt: 'Facebook',
              img: 'assets/images/facebook.png',
            ),
          ],
        ),
      ),
    );
  }
}