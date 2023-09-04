import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/errors/failure.dart';
import 'package:e_commerce/core/utils/api_service.dart';
import 'package:e_commerce/feature/home/data/models/product_model/product_model.dart';
import 'package:e_commerce/feature/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo
{
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async {
    try {
      var data = await ApiService.get(endPoint: 'products');
      List<ProductModel> products = [];
      for(int i = 0 ; i < data.length; i++){
        products.add(ProductModel.fromJson(data[i]));
      }
      return right(products);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
}