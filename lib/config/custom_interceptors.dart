import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:music_app/config/logger.dart';
import 'package:music_app/features/data/shared_preferences/production_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String uuid = GetIt.instance.get<ProductionSharedPreferences>().user?.uuid ?? "";
    logi.d('REQUEST[${options.method}] => PATH: ${options.path}');
    options.headers["version"] = "1.0.0";
    options.headers["X-SFPM-UUID"] = uuid;
    options.headers["device"] = "1";
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logi.d(
        'RESPONSE[${response.statusCode}] => PATH: ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logi.e(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.response?.realUri.path}');
    return super.onError(err, handler);
  }
}
