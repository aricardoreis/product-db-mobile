import 'package:intl/intl.dart';

String formatAsCurrency(double value) =>
    'R\$ ${NumberFormat('#,##0.00', 'pt-BR').format(value)}';

String dateToString(DateTime date) => DateFormat('dd/MM/yyyy').format(date);
