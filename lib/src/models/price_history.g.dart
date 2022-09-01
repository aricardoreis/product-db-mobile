// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceHistory _$$_PriceHistoryFromJson(Map<String, dynamic> json) =>
    _$_PriceHistory(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PriceHistoryToJson(_$_PriceHistory instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
