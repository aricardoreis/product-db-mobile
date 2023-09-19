// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleDetailsResponse _$SaleDetailsResponseFromJson(Map<String, dynamic> json) {
  return _SaleDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$SaleDetailsResponse {
  bool get success => throw _privateConstructorUsedError;
  Sale get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleDetailsResponseCopyWith<SaleDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleDetailsResponseCopyWith<$Res> {
  factory $SaleDetailsResponseCopyWith(
          SaleDetailsResponse value, $Res Function(SaleDetailsResponse) then) =
      _$SaleDetailsResponseCopyWithImpl<$Res, SaleDetailsResponse>;
  @useResult
  $Res call({bool success, Sale result});

  $SaleCopyWith<$Res> get result;
}

/// @nodoc
class _$SaleDetailsResponseCopyWithImpl<$Res, $Val extends SaleDetailsResponse>
    implements $SaleDetailsResponseCopyWith<$Res> {
  _$SaleDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Sale,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SaleCopyWith<$Res> get result {
    return $SaleCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SaleDetailsResponseCopyWith<$Res>
    implements $SaleDetailsResponseCopyWith<$Res> {
  factory _$$_SaleDetailsResponseCopyWith(_$_SaleDetailsResponse value,
          $Res Function(_$_SaleDetailsResponse) then) =
      __$$_SaleDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Sale result});

  @override
  $SaleCopyWith<$Res> get result;
}

/// @nodoc
class __$$_SaleDetailsResponseCopyWithImpl<$Res>
    extends _$SaleDetailsResponseCopyWithImpl<$Res, _$_SaleDetailsResponse>
    implements _$$_SaleDetailsResponseCopyWith<$Res> {
  __$$_SaleDetailsResponseCopyWithImpl(_$_SaleDetailsResponse _value,
      $Res Function(_$_SaleDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? result = null,
  }) {
    return _then(_$_SaleDetailsResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Sale,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleDetailsResponse implements _SaleDetailsResponse {
  const _$_SaleDetailsResponse({required this.success, required this.result});

  factory _$_SaleDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SaleDetailsResponseFromJson(json);

  @override
  final bool success;
  @override
  final Sale result;

  @override
  String toString() {
    return 'SaleDetailsResponse(success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleDetailsResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleDetailsResponseCopyWith<_$_SaleDetailsResponse> get copyWith =>
      __$$_SaleDetailsResponseCopyWithImpl<_$_SaleDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleDetailsResponseToJson(
      this,
    );
  }
}

abstract class _SaleDetailsResponse implements SaleDetailsResponse {
  const factory _SaleDetailsResponse(
      {required final bool success,
      required final Sale result}) = _$_SaleDetailsResponse;

  factory _SaleDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_SaleDetailsResponse.fromJson;

  @override
  bool get success;
  @override
  Sale get result;
  @override
  @JsonKey(ignore: true)
  _$$_SaleDetailsResponseCopyWith<_$_SaleDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
