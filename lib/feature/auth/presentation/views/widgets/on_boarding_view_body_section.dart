import 'package:e_commerce/feature/auth/presentation/views/widgets/age_drop_down_widget.dart';
import 'package:e_commerce/feature/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBodySection extends StatelessWidget {
  const OnBoardingViewBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 110,),
          Text('Tell us About yourself', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),),
          SizedBox(height: 50,),
          Text('Who do you shop for ?', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                txt: 'Men',
                width: 160,
              ),
              CustomButton(
                txt: 'Women',
                width: 160,
                color: Color(0xffF4F4F4),
                txtColor: Colors.black,
              ),]
          ),
            SizedBox(height: 60,),
            Text('How Old are you ?', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),),
            SizedBox(height: 15,),
            AgeDropDownWidget(),
        ],
      ),
    );
  }
}