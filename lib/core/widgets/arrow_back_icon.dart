import 'package:flutter/material.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Container(
        width: 45,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(100),
          ),
        child: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Image.asset('assets/images/arrow.png',),
          ),
      ),
    );
  }
}