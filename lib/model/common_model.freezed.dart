// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmptyObjectData _$EmptyObjectDataFromJson(Map<String, dynamic> json) {
  return _EmptyObjectData.fromJson(json);
}

/// @nodoc
mixin _$EmptyObjectData {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyObjectDataCopyWith<$Res> {
  factory $EmptyObjectDataCopyWith(
          EmptyObjectData value, $Res Function(EmptyObjectData) then) =
      _$EmptyObjectDataCopyWithImpl<$Res, EmptyObjectData>;
}

/// @nodoc
class _$EmptyObjectDataCopyWithImpl<$Res, $Val extends EmptyObjectData>
    implements $EmptyObjectDataCopyWith<$Res> {
  _$EmptyObjectDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyObjectDataImplCopyWith<$Res> {
  factory _$$EmptyObjectDataImplCopyWith(_$EmptyObjectDataImpl value,
          $Res Function(_$EmptyObjectDataImpl) then) =
      __$$EmptyObjectDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyObjectDataImplCopyWithImpl<$Res>
    extends _$EmptyObjectDataCopyWithImpl<$Res, _$EmptyObjectDataImpl>
    implements _$$EmptyObjectDataImplCopyWith<$Res> {
  __$$EmptyObjectDataImplCopyWithImpl(
      _$EmptyObjectDataImpl _value, $Res Function(_$EmptyObjectDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$EmptyObjectDataImpl implements _EmptyObjectData {
  const _$EmptyObjectDataImpl();

  factory _$EmptyObjectDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyObjectDataImplFromJson(json);

  @override
  String toString() {
    return 'EmptyObjectData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyObjectDataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyObjectDataImplToJson(
      this,
    );
  }
}

abstract class _EmptyObjectData implements EmptyObjectData {
  const factory _EmptyObjectData() = _$EmptyObjectDataImpl;

  factory _EmptyObjectData.fromJson(Map<String, dynamic> json) =
      _$EmptyObjectDataImpl.fromJson;
}

BSResponse<T> _$BSResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return BSResponseData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BSResponse<T> {
  int get code => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BSResponseCopyWith<T, BSResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BSResponseCopyWith<T, $Res> {
  factory $BSResponseCopyWith(
          BSResponse<T> value, $Res Function(BSResponse<T>) then) =
      _$BSResponseCopyWithImpl<T, $Res, BSResponse<T>>;
  @useResult
  $Res call({int code, String success, T? data});
}

/// @nodoc
class _$BSResponseCopyWithImpl<T, $Res, $Val extends BSResponse<T>>
    implements $BSResponseCopyWith<T, $Res> {
  _$BSResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? success = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BSResponseDataImplCopyWith<T, $Res>
    implements $BSResponseCopyWith<T, $Res> {
  factory _$$BSResponseDataImplCopyWith(_$BSResponseDataImpl<T> value,
          $Res Function(_$BSResponseDataImpl<T>) then) =
      __$$BSResponseDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int code, String success, T? data});
}

/// @nodoc
class __$$BSResponseDataImplCopyWithImpl<T, $Res>
    extends _$BSResponseCopyWithImpl<T, $Res, _$BSResponseDataImpl<T>>
    implements _$$BSResponseDataImplCopyWith<T, $Res> {
  __$$BSResponseDataImplCopyWithImpl(_$BSResponseDataImpl<T> _value,
      $Res Function(_$BSResponseDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? success = null,
    Object? data = freezed,
  }) {
    return _then(_$BSResponseDataImpl<T>(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BSResponseDataImpl<T> extends BSResponseData<T> {
  const _$BSResponseDataImpl({this.code = 0, this.success = '', this.data})
      : super._();

  factory _$BSResponseDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BSResponseDataImplFromJson(json, fromJsonT);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String success;
  @override
  final T? data;

  @override
  String toString() {
    return 'BSResponse<$T>(code: $code, success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BSResponseDataImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, success, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BSResponseDataImplCopyWith<T, _$BSResponseDataImpl<T>> get copyWith =>
      __$$BSResponseDataImplCopyWithImpl<T, _$BSResponseDataImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BSResponseDataImplToJson<T>(this, toJsonT);
  }
}

abstract class BSResponseData<T> extends BSResponse<T> {
  const factory BSResponseData(
      {final int code,
      final String success,
      final T? data}) = _$BSResponseDataImpl<T>;
  const BSResponseData._() : super._();

  factory BSResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BSResponseDataImpl<T>.fromJson;

  @override
  int get code;
  @override
  String get success;
  @override
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$BSResponseDataImplCopyWith<T, _$BSResponseDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
