import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/arrow_back_icon.dart';
import 'package:e_commerce/feature/home/presentation/manager/get_category_cubit/get_category_cubit.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryResultViewBody extends StatelessWidget {
  const CategoryResultViewBody({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const ArrowBackIcon(),
          const SizedBox(
            height: 16,
          ),
          Text(
            txt,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
           BlocBuilder<GetCategoryCubit, GetCategoryState>(
              builder: (context, state) {
                if(state is GetCategorySuccess){
                  return Expanded(child: 
                  CustomGridView(
                    productsList: state.products,
                  ));
                }else if (state is GetCategoryFailure){
                  return Center(child: Text(state.errorMessage));
                }else {
                  return const Center(child: CircularProgressIndicator(color: kPrimaryColor,),);
                }
              },
            ),
        ],
      ),
    );
  }
}