import 'package:c_guy_translation_flutter/model/common_model.dart';
import 'package:c_guy_translation_flutter/model/translation_data_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'translation_service.g.dart';

class TranslationRemoteService {
  late TranslationRemoteApi api;

  TranslationRemoteService(Dio dio) {
    api = _TranslationRemoteApi(dio);
  }
}

@RestApi(baseUrl: "")
abstract class TranslationRemoteApi {
  // 翻译
  @POST('/api/translate')
  Future<BSResponse<List<String>>> fetchTranslationData(
    @Body() TranslationDataRequest req,
    @CancelRequest() CancelToken? cancelToken,
  );

  // 获取源语言
  @GET('/api/langdetect')
  Future<BSResponse<String>> fetchSourceLanguages(
    @Query("query") String text,
    @CancelRequest() CancelToken? cancelToken,
  );

  // 获取支持的语言列表
  @GET('/api/languages')
  Future<BSResponse<List<String>>> fetchSupportLanguages(
    @Query("codes") List<String> codes,
    @CancelRequest() CancelToken? cancelToken,
  );

  // 多个语言同时翻译
  @POST('/api/batch_translate')
  Future<List<String>> fetchMultiLanguagesTranslationData(
    @Body() List<TranslationDataRequest> req,
    @CancelRequest() CancelToken? cancelToken,
  );
}
