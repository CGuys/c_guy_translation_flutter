// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmptyObjectDataImpl _$$EmptyObjectDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EmptyObjectDataImpl();

Map<String, dynamic> _$$EmptyObjectDataImplToJson(
        _$EmptyObjectDataImpl instance) =>
    <String, dynamic>{};

_$BSResponseDataImpl<T> _$$BSResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BSResponseDataImpl<T>(
      code: (json['code'] as num?)?.toInt() ?? 0,
      success: json['success'] as String? ?? '',
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$BSResponseDataImplToJson<T>(
  _$BSResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'success': instance.success,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
