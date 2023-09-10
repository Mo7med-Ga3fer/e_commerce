part of 'get_category_cubit.dart';

@immutable
sealed class GetCategoryState {}

final class GetCategoryInitial extends GetCategoryState {}
final class GetCategoryLoading extends GetCategoryState {}
final class GetCategorySuccess extends GetCategoryState {
  final List<ProductModel> products;

  GetCategorySuccess(this.products);
}
final class GetCategoryFailure extends GetCategoryState {
  final String errorMessage;

  GetCategoryFailure(this.errorMessage);
}
