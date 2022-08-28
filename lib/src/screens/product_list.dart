import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_db_mobile/src/screens/product_item.dart';
import '../providers/product_provider.dart';

class ProductList extends ConsumerWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final products = ref.watch(productsProvider);
    return Expanded(
        child: products.when(
      data: (data) => ListView.builder(
        padding: const EdgeInsets.only(top: 0.0),
        itemCount: data.length,
        itemBuilder: (context, index) => ProviderScope(
          child: ProductItem(
            product: data[index],
          ),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, e) => Center(
        child: Text(error.toString()),
      ),
    ));
  }
}
