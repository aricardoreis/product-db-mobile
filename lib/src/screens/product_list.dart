import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import '../models/product.dart';
import 'product_details.dart';
import 'product_item.dart';
import '../providers/product_provider.dart';

class ProductList extends ConsumerWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var screenWidth = MediaQuery.of(context).size.width;

    List<Product> products = ref.watch(productProvider).products;
    bool isLoading = ref.watch(productProvider).isLoading;

    return SafeArea(
      child: isLoading
          ? Center(
              child: Lottie.asset(
                'assets/loading.json',
                width: screenWidth / 2,
              ),
            )
          : Container(
              color: Colors.white,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  Product product = products[index];
                  return InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          product: product,
                        ),
                      ),
                    ),
                    child: ProductItem(
                      product: product,
                    ),
                  );
                },
              ),
            ),
    );
  }
}
