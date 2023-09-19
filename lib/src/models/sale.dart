import 'package:freezed_annotation/freezed_annotation.dart';

import 'sale_product.dart';

part 'sale.freezed.dart';
part 'sale.g.dart';

@freezed
class Sale with _$Sale {
  factory Sale({
    required String id,
    required DateTime date,
    required double total,
    List<SaleProduct>? products,
  }) = _Sale;

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);
}
