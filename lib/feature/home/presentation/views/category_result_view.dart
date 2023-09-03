import 'package:e_commerce/feature/home/presentation/views/widgets/category_result_view_body.dart';
import 'package:flutter/material.dart';

class CategoryResultView extends StatelessWidget {
  const CategoryResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CategoryResultViewBody()),
    );
  }
}