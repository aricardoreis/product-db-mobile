import 'package:flutter/material.dart';

import '../../injection.dart';
import '../models/sale.dart';
import '../services/sale_service.dart';
import '../utils/format.dart';
import '../widgets/loading.dart';

class SaleDetails extends StatefulWidget {
  final String saleId;
  const SaleDetails({
    super.key,
    required this.saleId,
  });

  @override
  State<SaleDetails> createState() => _SaleDetailsState();
}

class _SaleDetailsState extends State<SaleDetails> {
  @override
  Widget build(BuildContext context) {
    final service = locator.get<SaleService>();
    return FutureBuilder<Sale>(
      future: service.getSaleDetails(widget.saleId),
      builder: (context, snapshot) {
        Widget widget;
        if (snapshot.hasData) {
          var sale = snapshot.data!;
          widget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  sale.id,
                  style: const TextStyle(
                    color: Colors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Products'.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...sale.products!.map(
                (e) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 5, child: Text(e.name)),
                    Expanded(
                      flex: 1,
                      child: Text(
                        e.type,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        e.amount.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        formatAsCurrency(e.value),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'TOTAL',
                ),
                trailing: Text(
                  formatAsCurrency(sale.total),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          widget = const Text('Something went wrong');
        } else {
          widget = const Center(
            child: Loading(),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text('Sale Details'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: widget,
            ),
          ),
        );
      },
    );
  }
}
