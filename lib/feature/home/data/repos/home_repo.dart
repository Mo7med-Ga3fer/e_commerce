import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/errors/failure.dart';
import 'package:e_commerce/feature/home/data/models/product_model/product_model.dart';

abstract class HomeRepo
{
  Future<Either<Failure, List<ProductModel>>> fetchProducts();
}