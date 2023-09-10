import 'package:e_commerce/feature/home/data/repos/home_repo_impl.dart';
import 'package:e_commerce/feature/home/presentation/manager/get_category_cubit/get_category_cubit.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/category_result_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryResultView extends StatelessWidget {
  const CategoryResultView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCategoryCubit(HomeRepoImpl())..getCategoryProducts(category: category),
      child: Scaffold(
        body: SafeArea(child: CategoryResultViewBody(txt: category,)),
      ),
    );
  }
}
