import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopByCategoryViewBody extends StatelessWidget {
  const ShopByCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const ArrowBackIcon(),
          const SizedBox(
            height: 28,
          ),
          const Text(
            'Shop by Categories',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Category(
             txt: "Men's Clothing",
             img: 'assets/images/hoodies.png',
             onTap: (){
              GoRouter.of(context).push('/${AppRouter.kCategoryProductsView}', extra: "men's clothing");
             },
          ),
          Category(
             txt: "Women's Clothing",
             img: 'assets/images/woman.webp',
             onTap: (){
              GoRouter.of(context).push('/${AppRouter.kCategoryProductsView}', extra: "women's clothing");
             },
          ),
          Category(
             txt: "Jewelries",
             img: 'assets/images/jewelry.webp',
             onTap: (){
              GoRouter.of(context).push('/${AppRouter.kCategoryProductsView}', extra: "jewelery");
             },
          ),
          Category(
             txt: "Electronics",
             img: 'assets/images/electronics.jpg',
             onTap: (){
              GoRouter.of(context).push('/${AppRouter.kCategoryProductsView}', extra: "electronics");
             },
          ),
        ],
      ),
    );
  }
}
