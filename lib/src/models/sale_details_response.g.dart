// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaleDetailsResponse _$$_SaleDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SaleDetailsResponse(
      success: json['success'] as bool,
      result: Sale.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SaleDetailsResponseToJson(
        _$_SaleDetailsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };
