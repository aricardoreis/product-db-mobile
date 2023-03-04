// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sale _$$_SaleFromJson(Map<String, dynamic> json) => _$_Sale(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SaleToJson(_$_Sale instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'total': instance.total,
    };
