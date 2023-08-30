import 'package:flutter/material.dart';

class UnderButtonSentence extends StatelessWidget {
  const UnderButtonSentence({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Dont have an Account ?',),
        SizedBox(width: 5,),
        Text('Create One', style: TextStyle(
         fontWeight: FontWeight.bold,
        ),),
      ],
    );
  }
}