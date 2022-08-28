// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EProductsResponse _$$_EProductsResponseFromJson(Map<String, dynamic> json) =>
    _$_EProductsResponse(
      success: json['success'] as bool,
      result: (json['result'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EProductsResponseToJson(
        _$_EProductsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };
