import 'package:flutter/material.dart';

class UnderButtonSentence extends StatelessWidget {
  const UnderButtonSentence({super.key, this.onTap, required this.firstText, required this.secondText});
  final void Function()? onTap;
  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(firstText,),
        const SizedBox(width: 5,),
        GestureDetector(
          onTap: onTap,
          child: Text(secondText, style: const TextStyle(
           fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    );
  }
}