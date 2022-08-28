import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/product_repository.dart';
import '../models/product.dart';

final productsProvider = FutureProvider((ref) async {
  List<Product> products = await ref.read(productRepository).getProducts();
  return products;
});
