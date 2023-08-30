import 'package:flutter/material.dart';

class UnderButtonSentence extends StatelessWidget {
  const UnderButtonSentence({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Dont have an Account ?',),
        const SizedBox(width: 5,),
        GestureDetector(
          onTap: onTap,
          child: const Text('Create One', style: TextStyle(
           fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    );
  }
}