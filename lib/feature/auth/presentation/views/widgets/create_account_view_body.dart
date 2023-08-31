import 'package:e_commerce/feature/auth/presentation/views/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CreateAccountViewBody extends StatelessWidget {
  const CreateAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          ArrowBackIcon(),
          SizedBox(height: 20,),
          Text('Create Account', style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),),
          SizedBox(height: 32,),
          CustomTextFormField(hintText: 'Firstname'),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'Lastname'),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'Email Address'),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'Password'),
          SizedBox(height: 40,),
          CustomButton(),
        ],
      ),
    );
  }
}