import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../repositories/tokens/tokens_repository_impl.dart';

/// Помощник работы с Dio
abstract class DioHelper {
  static final _host = Platform.isAndroid ? '10.0.2.2' : '127.0.0.1';
  static final _localBaseUrl = "https://$_host:7001/api";
  //static const String _baseUrl = 'http://78.40.219.169:1480/api';

  static String get baseUrl => dotenv.env['main_api'] ?? _localBaseUrl;

  /// Получить данные
  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> headers,
    bool useLoggerInterceptor = true,
    bool useAuthErrorInterceptor = true,
  }) async {
    final dio = getDioClient(useLoggerInterceptor, useAuthErrorInterceptor);
    dio.options.headers = headers;
    return await dio.get(url);
  }

  /// Отправить данные
  static Future<Response> postData({
    required String url,
    dynamic data,
    Map<String, dynamic>? headers,
    bool useLoggerInterceptor = true,
    bool useAuthErrorInterceptor = true,
  }) async {
    final dio = getDioClient(useLoggerInterceptor, useAuthErrorInterceptor);
    dio.options.headers = headers;
    return await dio.post(url, data: data);
  }

  /// Изменить данные
  static Future<Response> patchData({
    required String url,
    dynamic data,
    Map<String, dynamic>? headers,
    bool useLoggerInterceptor = true,
    bool useAuthErrorInterceptor = true,
  }) async {
    final dio = getDioClient(useLoggerInterceptor, useAuthErrorInterceptor);
    dio.options.headers = headers;
    return await dio.patch(url, data: data);
  }

  /// Удалить данные
  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? headers,
    bool useLoggerInterceptor = true,
    bool useAuthErrorInterceptor = true,
  }) async {
    final dio = getDioClient(useLoggerInterceptor, useAuthErrorInterceptor);
    dio.options.headers = headers;
    return await dio.delete(url);
  }

  /// Получить клиент с найстройками
  static Dio getDioClient(
    bool useLoggerInterceptor,
    bool useAuthErrorInterceptor,
  ) {
    final client = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 32),
        receiveTimeout: const Duration(seconds: 32),
      ),
    );

    if (useLoggerInterceptor) {
      client.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
        ),
      );
    }

    if (useAuthErrorInterceptor) {
      client.interceptors.add(InterceptorsWrapper(
        onError: (DioError error, handler) async {
          if (error.response?.statusCode == 401) {
            try {
              final tokensRepository = TokensRepositoryImpl();
              await tokensRepository.updateTokensFromServer();

              final options = Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers,
                responseType: error.requestOptions.responseType,
              );

              final accessToken = await tokensRepository.getAccessToken();
              final headers = error.requestOptions.headers;
              if (headers.containsKey('accessToken')) {
                headers['Authorization'] = 'Bearer $accessToken';
                options.headers = headers;
              }

              final response = await Dio().request<dynamic>(
                error.requestOptions.path,
                data: error.requestOptions.data,
                queryParameters: error.requestOptions.queryParameters,
                options: options,
              );

              debugPrint("Refresh-токен успешно обновлен.");
              return handler.resolve(response);
            } on DioError catch (e) {
              debugPrint("DioInterceptorError -> $e");
              debugPrint("Refresh-токен не обновлен.");
              navService.pushNamedAndRemoveUntil('/welcome');
              rethrow;
            }
          }
        },
      ));
    }

    client.options.followRedirects = false;
    client.options.validateStatus = (status) {
      return true;
    };

    return client;
  }
}
