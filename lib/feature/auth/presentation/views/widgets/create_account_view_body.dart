import 'package:e_commerce/feature/auth/presentation/views/on_boarding_view.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CreateAccountViewBody extends StatelessWidget {
  const CreateAccountViewBody({super.key});

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
            const Text('Create Account', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),),
            const SizedBox(height: 32,),
            const CustomTextFormField(hintText: 'Firstname'),
            const SizedBox(height: 16,),
            const CustomTextFormField(hintText: 'Lastname'),
            const SizedBox(height: 16,),
            const CustomTextFormField(hintText: 'Email Address'),
            const SizedBox(height: 16,),
            const CustomTextFormField(hintText: 'Password'),
            const SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBoardingView()));
                },
              )),
          ],
        ),
      ),
    );
  }
}