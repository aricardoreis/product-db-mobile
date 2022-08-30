import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_db_mobile/src/screens/product_details.dart';
import 'package:product_db_mobile/src/screens/product_item.dart';
import '../providers/product_provider.dart';

class ProductList extends ConsumerWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final products = ref.watch(productsProvider);
    return products.when(
      data: (data) => data.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 0.0),
              itemCount: data.length,
              itemBuilder: (context, index) => ProviderScope(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetails(product: data[index]),
                    ),
                  ),
                  child: ProductItem(
                    product: data[index],
                  ),
                ),
              ),
            )
          : const Center(
              child: Text('There is no data to show.'),
            ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, e) => Center(
        child: Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
