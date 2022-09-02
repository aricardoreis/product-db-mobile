import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_db_mobile/src/models/product.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductsResponse with _$ProductsResponse {
  const factory ProductsResponse({
    required bool success,
    required List<Product> result,
  }) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}
