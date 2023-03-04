import 'package:flutter/material.dart';
import '../models/product.dart';
import '../utils/format.dart';
import '../widgets/date_text.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                product.name,
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(product.code),
            ),
            PriceHistory(product)
          ],
        ),
      ),
    );
  }
}

class PriceHistory extends StatelessWidget {
  final Product _product;
  const PriceHistory(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price history'.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        ..._product.priceHistory.map(
          (e) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateText(e.date),
              Text(
                formatAsCurrency(e.value),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
