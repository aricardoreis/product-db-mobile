import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/product.dart';
import '../models/product_response.dart';
import '../repository/api.dart';
import '../repository/product_repository.dart';

// final productsProvider = FutureProvider((ref) async {
//   List<Product> products = await ref.read(productRepository).getProducts();
//   return products;
// });

part 'product_provider.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default([]) List<Product> products,
    @Default(true) bool isLoading,
  }) = _ProductState;

  const ProductState._();
}

final productProvider = StateNotifierProvider<ProductNotifier, ProductState>(
  (ref) => ProductNotifier(ref.read),
);

class ProductNotifier extends StateNotifier<ProductState> {
  final Reader read;

  ProductNotifier(this.read) : super(const ProductState()) {
    loadProducts();
  }

  loadProducts() async {
    state = state.copyWith(isLoading: true);

    final productList = await ProductRepositoryApi(read).getProducts();

    state = state.copyWith(products: productList, isLoading: false);
  }

  addProducts(String url) async {
    state = state.copyWith(isLoading: true);

    final data = await ApiRepository(read).loadInvoice(url);

    if (data is ProductsResponse) {
      state = state.copyWith(products: data.result, isLoading: false);
    } else {
      state = state.copyWith(isLoading: false);
    }
  }
}
