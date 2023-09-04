import 'package:e_commerce/feature/home/presentation/views/widgets/categories_list_item.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoriesListItem(
            txt: 'Hoodies',
            img: 'assets/images/hoodies.png',
          ),
          CategoriesListItem(
            txt: 'Shorts',
            img: 'assets/images/shorts.png',
          ),
          CategoriesListItem(
            txt: 'Shoes',
            img: 'assets/images/shoes.png',
          ),
          CategoriesListItem(
            txt: 'Bags',
            img: 'assets/images/bags.png',
          ),
          CategoriesListItem(
            txt: 'Accessories',
            img: 'assets/images/accessories.png',
          ),
        ],
      ),
    );
  }
}
