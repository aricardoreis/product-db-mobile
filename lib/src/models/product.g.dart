// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      name: json['name'] as String,
      code: json['code'] as int,
      value: (json['value'] as num).toDouble(),
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'value': instance.value,
      'type': instance.type,
      'date': instance.date.toIso8601String(),
    };
