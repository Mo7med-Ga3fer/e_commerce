import 'package:e_commerce/feature/auth/presentation/views/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 27),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            ArrowBackIcon(),
            SizedBox(height: 20,),
            Text('Forgot Password', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),),
            SizedBox(height: 35,),
            CustomTextFormField(
              hintText: 'Enter Email address',
            ),
            SizedBox(height: 16,),
            Align(
              alignment: Alignment.center,
              child: CustomButton()),
          ],
        ),
      ),
      );
  }
}
