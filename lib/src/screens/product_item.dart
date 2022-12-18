import 'package:flutter/material.dart';

import '../models/product.dart';
import '../utils/format.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.code),
      trailing: Text(formatAsCurrency(product.priceHistory.last.value)),
    );
  }
}
