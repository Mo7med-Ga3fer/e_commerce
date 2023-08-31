import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.width = 350, this.txt = 'Continue', this.color = kPrimaryColor, this.txtColor = Colors.white});
  final void Function()? onTap;
  final double width;
  final String txt;
  final Color color;
  final Color txtColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
        onPressed: onTap, 
        child: Text(txt, style: TextStyle(
          color: txtColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),),
        ),
    );
  }
}