part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsLoading extends ProductsState {
  ProductsLoading();
}

class ErrorState extends ProductsState {
  ErrorState();
}

class ProductsLoaded extends ProductsState {
  final List<Product> products;
  ProductsLoaded(this.products);
}
