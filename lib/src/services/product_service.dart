import 'package:injectable/injectable.dart';

import '../models/product_response.dart';
import '../models/product.dart';
import '../utils/network.dart';

abstract class ProductService {
  Future<List<Product>> getProducts();
}

@Injectable(as: ProductService)
class ProductServiceImpl implements ProductService {
  final path = '/products';

  ProductServiceImpl();

  @override
  Future<List<Product>> getProducts() async {
    var result = await httpClient.get(path);
    return ProductsResponse.fromJson(result.data).result;
  }
}
