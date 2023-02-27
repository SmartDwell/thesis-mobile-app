import 'dart:io' show Platform;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

import '../repositories/tokens/tokens_repository_impl.dart';

abstract class DioHelper {
  static final _host = Platform.isAndroid ? '10.0.2.2' : '127.0.0.1';
  static final _localBaseUrl = "https://$_host:7001/api";
  static const String _baseUrl = 'http://194.99.22.243:1480/api';

  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> query,
    required Map<String, dynamic> headers,
    bool useLoggerInterceptor = true,
    bool useAuthErrorInterceptor = true,
  }) async {
    final dio = getDioClient(useLoggerInterceptor, useAuthErrorInterceptor);
    dio.options.headers = headers;
    return await dio.get(url, queryParameters: query);
  }

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

  static Dio getDioClient(
    bool useLoggerInterceptor,
    bool useAuthErrorInterceptor,
  ) {
    final client = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
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
              if (headers.containsKey('access_token')) {
                headers['Authorization'] = 'Bearer: $accessToken';
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
