import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/feature/home/data/models/product_model/product_model.dart';
import 'package:flutter/material.dart';

class SellingItem extends StatelessWidget {
  const SellingItem({super.key, required this.product});
  final ProductModel product;
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
            child: Image.network(
              product.image!,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 159
            ),
            child: Text(
              product.title!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.clip,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            r"$ "+product.price.toString(),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
