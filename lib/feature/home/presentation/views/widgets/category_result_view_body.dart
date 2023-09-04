import 'package:e_commerce/core/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:flutter/material.dart';

class CategoryResultViewBody extends StatelessWidget {
  const CategoryResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          ArrowBackIcon(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Hoodies (240)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //Expanded(child: CustomGridView()),
        ],
      ),
    );
  }
}
