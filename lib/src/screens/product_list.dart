import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../models/product.dart';
import 'product_details.dart';
import 'product_item.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    List<Product> products = [];
    bool isLoading = false;

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
