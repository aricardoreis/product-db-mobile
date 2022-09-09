import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product_response.dart';
import '../models/product.dart';
import 'api.dart';

final productRepository = Provider<ProductRepository>(
  (ref) => ProductRepositoryApi(ref.read),
);

abstract class ProductRepository {
  Future<List<Product>> getProducts();
}

class ProductRepositoryApi implements ProductRepository {
  final path = '/products';

  final Reader read;
  ProductRepositoryApi(this.read);

  @override
  Future<List<Product>> getProducts() async {
    var result = await read(apiProvider).get(path);
    return ProductsResponse.fromJson(result.data).result;
  }
}
