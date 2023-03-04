// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesResponse _$$_SalesResponseFromJson(Map<String, dynamic> json) =>
    _$_SalesResponse(
      success: json['success'] as bool,
      result: (json['result'] as List<dynamic>)
          .map((e) => Sale.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesResponseToJson(_$_SalesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };
