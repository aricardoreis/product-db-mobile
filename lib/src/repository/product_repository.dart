import '../models/product_response.dart';
import '../models/product.dart';
import 'api.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
}

class ProductRepositoryApi implements ProductRepository {
  final path = '/products';

  ProductRepositoryApi();

  @override
  Future<List<Product>> getProducts() async {
    var result = await httpClient.get(path);
    return ProductsResponse.fromJson(result.data).result;
  }
}
