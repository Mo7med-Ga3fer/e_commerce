import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/feature/auth/data/manager/firebase_auth.dart';
import 'package:e_commerce/core/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25,),
            const ArrowBackIcon(),
            const SizedBox(height: 20,),
            const Text('Forgot Password', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),),
            const SizedBox(height: 35,),
            CustomTextFormField(
              hintText: 'Enter Email address',
              controller: email,
            ),
            const SizedBox(height: 16,),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onTap: ()async{
                  await Authentication.passwordReset(email.text);
                  GoRouter.of(context).pushReplacement('/${AppRouter.kEmailNotifyView}');
                },
              )),
          ],
        ),
      ),
      );
  }
}
