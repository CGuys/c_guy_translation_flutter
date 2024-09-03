import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_model.freezed.dart';
part 'common_model.g.dart';

@freezed
class EmptyObjectData with _$EmptyObjectData {
  const factory EmptyObjectData() = _EmptyObjectData;

  factory EmptyObjectData.fromJson(Map<String, Object?> json) => _$EmptyObjectDataFromJson(json);
}

@Freezed(genericArgumentFactories: true)
class BSResponse<T> with _$BSResponse<T> {
  const factory BSResponse({
    @Default(0) int code,
    @Default('') String success,
    T? data,
  }) = BSResponseData;

  const BSResponse._();

  factory BSResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BSResponseFromJson(json, fromJsonT);
}
