import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation_data_request.freezed.dart';

part 'translation_data_request.g.dart';

@unfreezed
class TranslationDataRequest with _$TranslationDataRequest {
  factory TranslationDataRequest({
    @JsonKey(name: 'translate_language') String? translateLanguage,
    List<String>? text,
    String? from,
  }) = _TranslationDataRequest;

  factory TranslationDataRequest.fromJson(Map<String, dynamic> json) => _$TranslationDataRequestFromJson(json);
}
