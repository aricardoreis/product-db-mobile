import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_db_mobile/src/models/price_history.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String name,
    required String code,
    required String type,
    required List<PriceHistory> priceHistory,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
