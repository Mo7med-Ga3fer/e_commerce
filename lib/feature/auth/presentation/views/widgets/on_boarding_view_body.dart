import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/on_boarding_view_body_section.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OnBoardingViewBodySection(),
        const Spacer(),
        Container(
          height: 80,
          width: double.infinity,
          color: const Color(0xffF4F4F4),
          child: const Center(
              child: CustomButton(
            txt: 'Finish',
          )),
        ), 
      ],
    );
  }
}