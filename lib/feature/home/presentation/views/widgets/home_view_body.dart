import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/feature/home/presentation/manager/all_products_cubit/get_all_products_cubit.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/categories_list.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/custom_search.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/home_app_bar.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/section_title.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/top_selling_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const HomeAppBar(),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomSearch(),
                  const SizedBox(
                    height: 25,
                  ),
                  SectionTitle(
                    title: 'Categories',
                    onTap: () {
                      GoRouter.of(context).push('/${AppRouter.kCategoriessListView}');
                    },
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CategoriesList(),
                  const SizedBox(
                    height: 25,
                  ),
                  const SectionTitle(title: 'Top Selling'),
                  const SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
                    builder: (context, state) {
                      if (state is GetAllProductsSucess) {
                        return TopSellingList(
                          productsList: state.products,
                        );
                      } else if (state is GetAllProductsFailure) {
                        return Center(child: Text(state.errorMessage));
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: kPrimaryColor,
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SectionTitle(
                    title: 'New In',
                    txtColor: kPrimaryColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
                    builder: (context, state) {
                      if (state is GetAllProductsSucess) {
                        return TopSellingList(
                          productsList: state.products,
                        );
                      } else if (state is GetAllProductsFailure) {
                        return Center(child: Text(state.errorMessage));
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: kPrimaryColor,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
