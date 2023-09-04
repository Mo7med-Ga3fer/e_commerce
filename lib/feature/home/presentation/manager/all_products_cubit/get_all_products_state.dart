part of 'get_all_products_cubit.dart';

@immutable
sealed class GetAllProductsState {}

final class GetAllProductsInitial extends GetAllProductsState {}
final class GetAllProductsLoading extends GetAllProductsState {}
final class GetAllProductsFailure extends GetAllProductsState {
  final String errorMessage;

  GetAllProductsFailure(this.errorMessage);

}
final class GetAllProductsSucess extends GetAllProductsState {
  final List<ProductModel> products;

  GetAllProductsSucess(this.products);
}
