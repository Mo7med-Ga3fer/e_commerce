import 'package:e_commerce/core/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/category.dart';
import 'package:flutter/material.dart';

class ShopByCategoryViewBody extends StatelessWidget {
  const ShopByCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          ArrowBackIcon(),
          SizedBox(height: 28,),
          Text('Shop by Categories', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),),
          SizedBox(height: 16,),
          Category(
            txt: 'Hoodies',
            img: 'assets/images/hoodies.png',
          ),
           Category(
            txt: 'Accessories',
            img: 'assets/images/accessories.png',
          ),
           Category(
            txt: 'Shorts',
            img: 'assets/images/shorts.png',
          ),
           Category(
            txt: 'Shoes',
            img: 'assets/images/shoes.png',
          ),
           Category(
            txt: 'Bags',
            img: 'assets/images/bags.png',
          ),
        ],
      ),
    );
  }
}