// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) {
  return _EProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductsResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Product> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsResponseCopyWith<ProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
          ProductsResponse value, $Res Function(ProductsResponse) then) =
      _$ProductsResponseCopyWithImpl<$Res>;
  $Res call({bool success, List<Product> result});
}

/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._value, this._then);

  final ProductsResponse _value;
  // ignore: unused_field
  final $Res Function(ProductsResponse) _then;

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
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$$_EProductsResponseCopyWith<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  factory _$$_EProductsResponseCopyWith(_$_EProductsResponse value,
          $Res Function(_$_EProductsResponse) then) =
      __$$_EProductsResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, List<Product> result});
}

/// @nodoc
class __$$_EProductsResponseCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res>
    implements _$$_EProductsResponseCopyWith<$Res> {
  __$$_EProductsResponseCopyWithImpl(
      _$_EProductsResponse _value, $Res Function(_$_EProductsResponse) _then)
      : super(_value, (v) => _then(v as _$_EProductsResponse));

  @override
  _$_EProductsResponse get _value => super._value as _$_EProductsResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_EProductsResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EProductsResponse implements _EProductsResponse {
  const _$_EProductsResponse(
      {required this.success, required final List<Product> result})
      : _result = result;

  factory _$_EProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EProductsResponseFromJson(json);

  @override
  final bool success;
  final List<Product> _result;
  @override
  List<Product> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'ProductsResponse(success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EProductsResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_EProductsResponseCopyWith<_$_EProductsResponse> get copyWith =>
      __$$_EProductsResponseCopyWithImpl<_$_EProductsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EProductsResponseToJson(
      this,
    );
  }
}

abstract class _EProductsResponse implements ProductsResponse {
  const factory _EProductsResponse(
      {required final bool success,
      required final List<Product> result}) = _$_EProductsResponse;

  factory _EProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_EProductsResponse.fromJson;

  @override
  bool get success;
  @override
  List<Product> get result;
  @override
  @JsonKey(ignore: true)
  _$$_EProductsResponseCopyWith<_$_EProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
