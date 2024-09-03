import 'package:c_guy_translation_flutter/util/toast_util.dart';
import 'package:dio/dio.dart';

class ErrorGlobalToastInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data;
    final code = data['code'];
    if (code != null && code != 200) {
      final errorMessage = data['errorMessage'];
      if (errorMessage != null && errorMessage is String && errorMessage.isNotEmpty) {
        showToast(errorMessage);
      }
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    showToast('网络请求错误');
    super.onError(err, handler);
  }
}
