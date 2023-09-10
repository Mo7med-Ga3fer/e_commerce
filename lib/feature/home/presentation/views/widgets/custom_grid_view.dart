import 'package:e_commerce/feature/home/data/models/product_model/product_model.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/selling_item.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.productsList});
  final List<ProductModel> productsList;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 6 / 10),
      itemCount: productsList.length,
      itemBuilder: (context, index) {
        return  SellingItem(
          product: productsList[index],
        );
      },
    );
  }
}
