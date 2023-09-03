import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/feature/auth/data/manager/firebase_auth.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/continue_with_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/underbutton_sentence.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      opacity: 0.08,
      color: kPrimaryColor,
      progressIndicator: const CircularProgressIndicator(color: kPrimaryColor,),
      child: SafeArea(
        child: Padding(
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
                CustomTextFormField(
                  hintText: 'Password',
                  controller: password,
                ),
                const SizedBox(height: 16,),
                CustomButton(
                  onTap: () async {
                    await Authentication.signIn(email.text, password.text);
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
                /**/
                const SizedBox(height: 60,),
                const Text('-OR-', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16,),
                ContinueWithButton(
                  txt: 'Google',
                  img: 'assets/images/google.png',
                  onTap: () async {
                    setState(() {
                      isLoading = true;
                    });
                    await Authentication.signInWithGoogle();
                    setState(() {
                      isLoading = false;
                    });
                     GoRouter.of(context).pushReplacement('/${AppRouter.kHomeView}');
                  },
                ),
                const SizedBox(height: 70,),
                UnderButtonSentence(
                  firstText: 'Dont have an Account ?',
                  secondText: 'Create One',
                  isCenter: true,
                  onTap: () {
                   GoRouter.of(context).pushReplacement('/${AppRouter.kRegisterView}');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}