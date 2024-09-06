import 'package:c_guy_translation_flutter/api/interceptors/error_global_toast_interceptor.dart';
import 'package:c_guy_translation_flutter/global/config.dart';
import 'package:c_guy_translation_flutter/log/log.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

/**
 * @Author Cheng Pan
 * @Data 2024/8/30.
 */
class CGService {
  static final _instance = CGService._();
  late Dio _dio;

  factory CGService.getInstance() => _instance;

  CGService._() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(minutes: 10),
        receiveTimeout: const Duration(minutes: 10),
        baseUrl: baseUrl,
      ),
    );
    _initDio(_dio);
  }

  void _initDio(Dio dio) {
    // dio.interceptors.add(DisableEncryptInterceptor());
    dio.interceptors.add(ErrorGlobalToastInterceptor());
    // dio.interceptors.add(TokenInterceptor());
    dio.options.contentType = Headers.jsonContentType;
    dio.interceptors.add(
      TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: kDebugMode,
          printResponseHeaders: true,
          printRequestData: true,
          printResponseData: true,
        ),
      ),
    );
  }

  static Dio dio() => _instance._dio;
}
