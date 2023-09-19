// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaleProductt _$$_SaleProducttFromJson(Map<String, dynamic> json) =>
    _$_SaleProductt(
      name: json['name'] as String,
      code: json['code'] as String,
      type: json['type'] as String,
      amount: (json['amount'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SaleProducttToJson(_$_SaleProductt instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'type': instance.type,
      'amount': instance.amount,
      'value': instance.value,
    };
