import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'sale.freezed.dart';
part 'sale.g.dart';

@freezed
class Sale with _$Sale {
  factory Sale({
    required String id,
    required DateTime date,
    required double total,
    List<Product>? products,
  }) = _Sale;

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);
}
