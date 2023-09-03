import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.txt, required this.img});
  final String txt;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: kSecondaryColor,
                backgroundImage: AssetImage(img),
              ),
            ),
            const SizedBox(width: 16,),
            Text(txt, style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),)
          ],
        ),
      ),
    );
  }
}