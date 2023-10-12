import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '/logic/objects/product.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsLoading()) {
    //fetching form database
  }
}
