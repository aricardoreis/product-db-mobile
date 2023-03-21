// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$SaleDetailsResponseCopyWithImpl<$Res>;
  $Res call({bool success, Sale result});

  $SaleCopyWith<$Res> get result;
}

/// @nodoc
class _$SaleDetailsResponseCopyWithImpl<$Res>
    implements $SaleDetailsResponseCopyWith<$Res> {
  _$SaleDetailsResponseCopyWithImpl(this._value, this._then);

  final SaleDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(SaleDetailsResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Sale,
    ));
  }

  @override
  $SaleCopyWith<$Res> get result {
    return $SaleCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
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
  $Res call({bool success, Sale result});

  @override
  $SaleCopyWith<$Res> get result;
}

/// @nodoc
class __$$_SaleDetailsResponseCopyWithImpl<$Res>
    extends _$SaleDetailsResponseCopyWithImpl<$Res>
    implements _$$_SaleDetailsResponseCopyWith<$Res> {
  __$$_SaleDetailsResponseCopyWithImpl(_$_SaleDetailsResponse _value,
      $Res Function(_$_SaleDetailsResponse) _then)
      : super(_value, (v) => _then(v as _$_SaleDetailsResponse));

  @override
  _$_SaleDetailsResponse get _value => super._value as _$_SaleDetailsResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_SaleDetailsResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
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
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
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
