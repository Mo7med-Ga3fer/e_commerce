import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.width = 350, this.txt = 'Continue'});
  final void Function()? onTap;
  final double width;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
        onPressed: onTap, 
        child: Text(txt, style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),),
        ),
    );
  }
}