// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslationDataRequestImpl _$$TranslationDataRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TranslationDataRequestImpl(
      translateLanguage: json['translate_language'] as String?,
      text: (json['text'] as List<dynamic>?)?.map((e) => e as String).toList(),
      from: json['from'] as String?,
    );

Map<String, dynamic> _$$TranslationDataRequestImplToJson(
        _$TranslationDataRequestImpl instance) =>
    <String, dynamic>{
      'translate_language': instance.translateLanguage,
      'text': instance.text,
      'from': instance.from,
    };
