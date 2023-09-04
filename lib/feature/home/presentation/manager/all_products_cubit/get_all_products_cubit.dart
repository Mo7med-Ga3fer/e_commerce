import 'package:bloc/bloc.dart';
import 'package:e_commerce/feature/home/data/models/product_model/product_model.dart';
import 'package:e_commerce/feature/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';

part 'get_all_products_state.dart';

class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit(this.homeRepo) : super(GetAllProductsInitial());

  final HomeRepo homeRepo;

  Future<void> getAllProducts() async {
    emit(GetAllProductsLoading());
    var result = await homeRepo.fetchProducts();
    result.fold(
      (failure) {
        emit(GetAllProductsFailure(failure.errorMessage));
      },
       (products) {
        emit(GetAllProductsSucess(products));
       }
    );
  }

}
