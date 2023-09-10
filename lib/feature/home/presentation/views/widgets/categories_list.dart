import 'package:e_commerce/feature/home/presentation/views/widgets/categories_list_item.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoriesListItem(
            txt: "Men's Clothing",
            img: 'assets/images/hoodies.png',
          ),
          CategoriesListItem(
            txt: "Women's Clothing",
            img: 'assets/images/woman.webp',
          ),
          CategoriesListItem(
            txt: 'Jewelery',
            img: 'assets/images/jewelry.webp',
          ),
          CategoriesListItem(
            txt: 'Electronics',
            img: 'assets/images/electronics.jpg',
          ),
        ],
      ),
    );
  }
}
