import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_history.freezed.dart';
part 'price_history.g.dart';

@freezed
class PriceHistory with _$PriceHistory {
  factory PriceHistory({
    required DateTime date,
    required double value,
  }) = _PriceHistory;

  factory PriceHistory.fromJson(Map<String, dynamic> json) =>
      _$PriceHistoryFromJson(json);
}
