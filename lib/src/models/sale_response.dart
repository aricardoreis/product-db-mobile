import 'package:freezed_annotation/freezed_annotation.dart';
import 'sale.dart';

part 'sale_response.freezed.dart';
part 'sale_response.g.dart';

@freezed
class SalesResponse with _$SalesResponse {
  const factory SalesResponse({
    required bool success,
    required List<Sale> result,
  }) = _SalesResponse;

  factory SalesResponse.fromJson(Map<String, dynamic> json) =>
      _$SalesResponseFromJson(json);
}
