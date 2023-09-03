import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        cursorHeight: 20,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Image.asset('assets/images/search.jpg'),
          contentPadding: const EdgeInsets.all(15),
          fillColor: const Color(0xFFF4F4F4),
          filled: true,
          focusColor: const Color(0xFFF4F4F4),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kPrimaryColor),
            borderRadius: BorderRadius.circular(100),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(100),
          )
        ),
      ),
    );
  }
}