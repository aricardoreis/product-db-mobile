// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleProduct _$SaleProductFromJson(Map<String, dynamic> json) {
  return _SaleProductt.fromJson(json);
}

/// @nodoc
mixin _$SaleProduct {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleProductCopyWith<SaleProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleProductCopyWith<$Res> {
  factory $SaleProductCopyWith(
          SaleProduct value, $Res Function(SaleProduct) then) =
      _$SaleProductCopyWithImpl<$Res, SaleProduct>;
  @useResult
  $Res call(
      {String name, String code, String type, double amount, double value});
}

/// @nodoc
class _$SaleProductCopyWithImpl<$Res, $Val extends SaleProduct>
    implements $SaleProductCopyWith<$Res> {
  _$SaleProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? amount = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleProducttCopyWith<$Res>
    implements $SaleProductCopyWith<$Res> {
  factory _$$_SaleProducttCopyWith(
          _$_SaleProductt value, $Res Function(_$_SaleProductt) then) =
      __$$_SaleProducttCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String code, String type, double amount, double value});
}

/// @nodoc
class __$$_SaleProducttCopyWithImpl<$Res>
    extends _$SaleProductCopyWithImpl<$Res, _$_SaleProductt>
    implements _$$_SaleProducttCopyWith<$Res> {
  __$$_SaleProducttCopyWithImpl(
      _$_SaleProductt _value, $Res Function(_$_SaleProductt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? amount = null,
    Object? value = null,
  }) {
    return _then(_$_SaleProductt(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleProductt implements _SaleProductt {
  _$_SaleProductt(
      {required this.name,
      required this.code,
      required this.type,
      required this.amount,
      required this.value});

  factory _$_SaleProductt.fromJson(Map<String, dynamic> json) =>
      _$$_SaleProducttFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final String type;
  @override
  final double amount;
  @override
  final double value;

  @override
  String toString() {
    return 'SaleProduct(name: $name, code: $code, type: $type, amount: $amount, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleProductt &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, type, amount, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleProducttCopyWith<_$_SaleProductt> get copyWith =>
      __$$_SaleProducttCopyWithImpl<_$_SaleProductt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleProducttToJson(
      this,
    );
  }
}

abstract class _SaleProductt implements SaleProduct {
  factory _SaleProductt(
      {required final String name,
      required final String code,
      required final String type,
      required final double amount,
      required final double value}) = _$_SaleProductt;

  factory _SaleProductt.fromJson(Map<String, dynamic> json) =
      _$_SaleProductt.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  String get type;
  @override
  double get amount;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_SaleProducttCopyWith<_$_SaleProductt> get copyWith =>
      throw _privateConstructorUsedError;
}
