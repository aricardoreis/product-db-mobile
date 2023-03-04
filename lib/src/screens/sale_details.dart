import 'package:flutter/material.dart';

import '../models/sale.dart';
import '../utils/format.dart';

class SaleDetails extends StatelessWidget {
  final Sale sale;
  const SaleDetails({Key? key, required this.sale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                sale.id,
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(formatAsCurrency(sale.total)),
            ),
            // TODO: add a list of products here
            // PriceHistory(product)
          ],
        ),
      ),
    );
  }
}
