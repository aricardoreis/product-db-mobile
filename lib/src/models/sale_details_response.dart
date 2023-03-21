import 'package:freezed_annotation/freezed_annotation.dart';
import 'sale.dart';

part 'sale_details_response.freezed.dart';
part 'sale_details_response.g.dart';

@freezed
class SaleDetailsResponse with _$SaleDetailsResponse {
  const factory SaleDetailsResponse({
    required bool success,
    required Sale result,
  }) = _SaleDetailsResponse;

  factory SaleDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$SaleDetailsResponseFromJson(json);
}
