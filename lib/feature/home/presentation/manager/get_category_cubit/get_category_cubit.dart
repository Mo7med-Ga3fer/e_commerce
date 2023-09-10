import 'package:bloc/bloc.dart';
import 'package:e_commerce/feature/home/data/models/product_model/product_model.dart';
import 'package:e_commerce/feature/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';

part 'get_category_state.dart';

class GetCategoryCubit extends Cubit<GetCategoryState> {
  GetCategoryCubit(this.homeRepo) : super(GetCategoryInitial());

  final HomeRepo homeRepo;

   Future<void> getCategoryProducts({required String category}) async {
    emit(GetCategoryLoading());
    var result = await homeRepo.fetchCategoryProducts(category: category);
    result.fold(
      (failure) {
        emit(GetCategoryFailure(failure.errorMessage));
      },
       (products) {
        emit(GetCategorySuccess(products));
       }
    );
  }
}
