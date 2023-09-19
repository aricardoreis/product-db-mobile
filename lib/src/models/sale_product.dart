import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_product.freezed.dart';
part 'sale_product.g.dart';

@freezed
class SaleProduct with _$SaleProduct {
  factory SaleProduct({
    required String name,
    required String code,
    required String type,
    required double amount,
    required double value,
  }) = _SaleProductt;

  factory SaleProduct.fromJson(Map<String, dynamic> json) =>
      _$SaleProductFromJson(json);
}
