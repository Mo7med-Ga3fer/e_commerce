import 'package:e_commerce/feature/auth/presentation/views/email_notify_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
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
            const CustomTextFormField(
              hintText: 'Enter Email address',
            ),
            const SizedBox(height: 16,),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const EmailNotifyView()));
                },
              )),
          ],
        ),
      ),
      );
  }
}
