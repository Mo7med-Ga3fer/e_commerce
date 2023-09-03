import 'package:e_commerce/feature/home/presentation/views/widgets/shop_by_category_body.dart';
import 'package:flutter/material.dart';

class ShopByCategoryView extends StatelessWidget {
  const ShopByCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ShopByCategoryViewBody()),
    );
  }
}