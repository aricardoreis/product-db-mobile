import 'package:flutter/material.dart';

import '../models/sale.dart';
import '../utils/format.dart';
import '../widgets/date_text.dart';

class SaleItem extends StatelessWidget {
  final Sale sale;
  const SaleItem({Key? key, required this.sale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sale.id),
      subtitle: DateText(sale.date),
      trailing: Text(formatAsCurrency(sale.total)),
    );
  }
}
