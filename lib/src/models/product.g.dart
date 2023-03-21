// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      name: json['name'] as String,
      code: json['code'] as String,
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
      priceHistory: (json['priceHistory'] as List<dynamic>)
          .map((e) => PriceHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'type': instance.type,
      'amount': instance.amount,
      'priceHistory': instance.priceHistory,
    };
