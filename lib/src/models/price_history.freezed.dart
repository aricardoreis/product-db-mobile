// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceHistory _$PriceHistoryFromJson(Map<String, dynamic> json) {
  return _PriceHistory.fromJson(json);
}

/// @nodoc
mixin _$PriceHistory {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceHistoryCopyWith<PriceHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceHistoryCopyWith<$Res> {
  factory $PriceHistoryCopyWith(
          PriceHistory value, $Res Function(PriceHistory) then) =
      _$PriceHistoryCopyWithImpl<$Res, PriceHistory>;
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class _$PriceHistoryCopyWithImpl<$Res, $Val extends PriceHistory>
    implements $PriceHistoryCopyWith<$Res> {
  _$PriceHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceHistoryCopyWith<$Res>
    implements $PriceHistoryCopyWith<$Res> {
  factory _$$_PriceHistoryCopyWith(
          _$_PriceHistory value, $Res Function(_$_PriceHistory) then) =
      __$$_PriceHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double value});
}

/// @nodoc
class __$$_PriceHistoryCopyWithImpl<$Res>
    extends _$PriceHistoryCopyWithImpl<$Res, _$_PriceHistory>
    implements _$$_PriceHistoryCopyWith<$Res> {
  __$$_PriceHistoryCopyWithImpl(
      _$_PriceHistory _value, $Res Function(_$_PriceHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$_PriceHistory(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceHistory implements _PriceHistory {
  _$_PriceHistory({required this.date, required this.value});

  factory _$_PriceHistory.fromJson(Map<String, dynamic> json) =>
      _$$_PriceHistoryFromJson(json);

  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'PriceHistory(date: $date, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceHistory &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceHistoryCopyWith<_$_PriceHistory> get copyWith =>
      __$$_PriceHistoryCopyWithImpl<_$_PriceHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceHistoryToJson(
      this,
    );
  }
}

abstract class _PriceHistory implements PriceHistory {
  factory _PriceHistory(
      {required final DateTime date,
      required final double value}) = _$_PriceHistory;

  factory _PriceHistory.fromJson(Map<String, dynamic> json) =
      _$_PriceHistory.fromJson;

  @override
  DateTime get date;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_PriceHistoryCopyWith<_$_PriceHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
