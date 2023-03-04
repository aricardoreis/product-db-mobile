// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return _Sale.fromJson(json);
}

/// @nodoc
mixin _$Sale {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleCopyWith<Sale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleCopyWith<$Res> {
  factory $SaleCopyWith(Sale value, $Res Function(Sale) then) =
      _$SaleCopyWithImpl<$Res>;
  $Res call({String id, DateTime date, double total});
}

/// @nodoc
class _$SaleCopyWithImpl<$Res> implements $SaleCopyWith<$Res> {
  _$SaleCopyWithImpl(this._value, this._then);

  final Sale _value;
  // ignore: unused_field
  final $Res Function(Sale) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_SaleCopyWith<$Res> implements $SaleCopyWith<$Res> {
  factory _$$_SaleCopyWith(_$_Sale value, $Res Function(_$_Sale) then) =
      __$$_SaleCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime date, double total});
}

/// @nodoc
class __$$_SaleCopyWithImpl<$Res> extends _$SaleCopyWithImpl<$Res>
    implements _$$_SaleCopyWith<$Res> {
  __$$_SaleCopyWithImpl(_$_Sale _value, $Res Function(_$_Sale) _then)
      : super(_value, (v) => _then(v as _$_Sale));

  @override
  _$_Sale get _value => super._value as _$_Sale;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Sale(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sale implements _Sale {
  _$_Sale({required this.id, required this.date, required this.total});

  factory _$_Sale.fromJson(Map<String, dynamic> json) => _$$_SaleFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final double total;

  @override
  String toString() {
    return 'Sale(id: $id, date: $date, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sale &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_SaleCopyWith<_$_Sale> get copyWith =>
      __$$_SaleCopyWithImpl<_$_Sale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleToJson(
      this,
    );
  }
}

abstract class _Sale implements Sale {
  factory _Sale(
      {required final String id,
      required final DateTime date,
      required final double total}) = _$_Sale;

  factory _Sale.fromJson(Map<String, dynamic> json) = _$_Sale.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_SaleCopyWith<_$_Sale> get copyWith => throw _privateConstructorUsedError;
}
