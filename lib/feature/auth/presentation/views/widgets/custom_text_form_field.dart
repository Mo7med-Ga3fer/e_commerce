import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.controller});
  final String hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        cursorHeight: 20,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.all(22),
            fillColor: const Color(0xFFF4F4F4),
            filled: true,
            focusColor: const Color(0xFFF4F4F4),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kPrimaryColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(8.0),
            )),
      ),
    );
  }
}
