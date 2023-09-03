import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/categories_list.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/custom_search.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/home_app_bar.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/section_title.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/top_selling_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            HomeAppBar(),
            SizedBox(height: 25,),
            CustomSearch(),
            SizedBox(height: 25,),
            SectionTitle(title: 'Categories'),
            SizedBox(height: 16,),
            CategoriesList(),
            SizedBox(height: 25,),
            SectionTitle(title: 'Top Selling'),
            SizedBox(height: 16,),
            TopSellingList(),
            SizedBox(height: 25,),
            SectionTitle(
              title: 'New In',
              txtColor: kPrimaryColor,
            ),
            SizedBox(height: 16,),
            TopSellingList(),
          ],
        ),
      ),
    );
  }
}