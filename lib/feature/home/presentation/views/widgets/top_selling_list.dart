import 'package:e_commerce/feature/home/data/models/product_model/product_model.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/selling_item.dart';
import 'package:flutter/material.dart';

class TopSellingList extends StatelessWidget {
  const TopSellingList({super.key, required this.productsList});
  final List<ProductModel> productsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 282,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: SellingItem(product: productsList[index]),
            );
          }),
    );
  }
}
