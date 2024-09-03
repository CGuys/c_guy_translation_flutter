// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TranslationDataRequest _$TranslationDataRequestFromJson(
    Map<String, dynamic> json) {
  return _TranslationDataRequest.fromJson(json);
}

/// @nodoc
mixin _$TranslationDataRequest {
  @JsonKey(name: 'translate_language')
  String? get translateLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'translate_language')
  set translateLanguage(String? value) => throw _privateConstructorUsedError;
  List<String>? get text => throw _privateConstructorUsedError;
  set text(List<String>? value) => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  set from(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationDataRequestCopyWith<TranslationDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationDataRequestCopyWith<$Res> {
  factory $TranslationDataRequestCopyWith(TranslationDataRequest value,
          $Res Function(TranslationDataRequest) then) =
      _$TranslationDataRequestCopyWithImpl<$Res, TranslationDataRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'translate_language') String? translateLanguage,
      List<String>? text,
      String? from});
}

/// @nodoc
class _$TranslationDataRequestCopyWithImpl<$Res,
        $Val extends TranslationDataRequest>
    implements $TranslationDataRequestCopyWith<$Res> {
  _$TranslationDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translateLanguage = freezed,
    Object? text = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      translateLanguage: freezed == translateLanguage
          ? _value.translateLanguage
          : translateLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationDataRequestImplCopyWith<$Res>
    implements $TranslationDataRequestCopyWith<$Res> {
  factory _$$TranslationDataRequestImplCopyWith(
          _$TranslationDataRequestImpl value,
          $Res Function(_$TranslationDataRequestImpl) then) =
      __$$TranslationDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'translate_language') String? translateLanguage,
      List<String>? text,
      String? from});
}

/// @nodoc
class __$$TranslationDataRequestImplCopyWithImpl<$Res>
    extends _$TranslationDataRequestCopyWithImpl<$Res,
        _$TranslationDataRequestImpl>
    implements _$$TranslationDataRequestImplCopyWith<$Res> {
  __$$TranslationDataRequestImplCopyWithImpl(
      _$TranslationDataRequestImpl _value,
      $Res Function(_$TranslationDataRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translateLanguage = freezed,
    Object? text = freezed,
    Object? from = freezed,
  }) {
    return _then(_$TranslationDataRequestImpl(
      translateLanguage: freezed == translateLanguage
          ? _value.translateLanguage
          : translateLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslationDataRequestImpl implements _TranslationDataRequest {
  _$TranslationDataRequestImpl(
      {@JsonKey(name: 'translate_language') this.translateLanguage,
      this.text,
      this.from});

  factory _$TranslationDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslationDataRequestImplFromJson(json);

  @override
  @JsonKey(name: 'translate_language')
  String? translateLanguage;
  @override
  List<String>? text;
  @override
  String? from;

  @override
  String toString() {
    return 'TranslationDataRequest(translateLanguage: $translateLanguage, text: $text, from: $from)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationDataRequestImplCopyWith<_$TranslationDataRequestImpl>
      get copyWith => __$$TranslationDataRequestImplCopyWithImpl<
          _$TranslationDataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslationDataRequestImplToJson(
      this,
    );
  }
}

abstract class _TranslationDataRequest implements TranslationDataRequest {
  factory _TranslationDataRequest(
      {@JsonKey(name: 'translate_language') String? translateLanguage,
      List<String>? text,
      String? from}) = _$TranslationDataRequestImpl;

  factory _TranslationDataRequest.fromJson(Map<String, dynamic> json) =
      _$TranslationDataRequestImpl.fromJson;

  @override
  @JsonKey(name: 'translate_language')
  String? get translateLanguage;
  @JsonKey(name: 'translate_language')
  set translateLanguage(String? value);
  @override
  List<String>? get text;
  set text(List<String>? value);
  @override
  String? get from;
  set from(String? value);
  @override
  @JsonKey(ignore: true)
  _$$TranslationDataRequestImplCopyWith<_$TranslationDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
