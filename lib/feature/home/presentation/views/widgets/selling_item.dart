import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class SellingItem extends StatelessWidget {
  const SellingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            width: 159,
            height: 220,
            child: Image.asset('assets/images/sample.png', fit: BoxFit.fill,),
          ),
          const SizedBox(height: 8,),
          const Text("Men's Harrington Jacket", style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),),
          const SizedBox(height: 8,),
          const Text(r"$148.00", style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),),
        ],
      ),
    );
  }
}