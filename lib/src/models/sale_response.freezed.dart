// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesResponse _$SalesResponseFromJson(Map<String, dynamic> json) {
  return _SalesResponse.fromJson(json);
}

/// @nodoc
mixin _$SalesResponse {
  bool get success => throw _privateConstructorUsedError;
  List<Sale> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesResponseCopyWith<SalesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesResponseCopyWith<$Res> {
  factory $SalesResponseCopyWith(
          SalesResponse value, $Res Function(SalesResponse) then) =
      _$SalesResponseCopyWithImpl<$Res, SalesResponse>;
  @useResult
  $Res call({bool success, List<Sale> result});
}

/// @nodoc
class _$SalesResponseCopyWithImpl<$Res, $Val extends SalesResponse>
    implements $SalesResponseCopyWith<$Res> {
  _$SalesResponseCopyWithImpl(this._value, this._then);

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
              as List<Sale>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesResponseCopyWith<$Res>
    implements $SalesResponseCopyWith<$Res> {
  factory _$$_SalesResponseCopyWith(
          _$_SalesResponse value, $Res Function(_$_SalesResponse) then) =
      __$$_SalesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<Sale> result});
}

/// @nodoc
class __$$_SalesResponseCopyWithImpl<$Res>
    extends _$SalesResponseCopyWithImpl<$Res, _$_SalesResponse>
    implements _$$_SalesResponseCopyWith<$Res> {
  __$$_SalesResponseCopyWithImpl(
      _$_SalesResponse _value, $Res Function(_$_SalesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? result = null,
  }) {
    return _then(_$_SalesResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Sale>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesResponse implements _SalesResponse {
  const _$_SalesResponse(
      {required this.success, required final List<Sale> result})
      : _result = result;

  factory _$_SalesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SalesResponseFromJson(json);

  @override
  final bool success;
  final List<Sale> _result;
  @override
  List<Sale> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'SalesResponse(success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesResponse &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesResponseCopyWith<_$_SalesResponse> get copyWith =>
      __$$_SalesResponseCopyWithImpl<_$_SalesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesResponseToJson(
      this,
    );
  }
}

abstract class _SalesResponse implements SalesResponse {
  const factory _SalesResponse(
      {required final bool success,
      required final List<Sale> result}) = _$_SalesResponse;

  factory _SalesResponse.fromJson(Map<String, dynamic> json) =
      _$_SalesResponse.fromJson;

  @override
  bool get success;
  @override
  List<Sale> get result;
  @override
  @JsonKey(ignore: true)
  _$$_SalesResponseCopyWith<_$_SalesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
