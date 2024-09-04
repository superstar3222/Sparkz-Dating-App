import 'dart:developer';

import 'package:dio/dio.dart';

import '../services/api_url.dart';
import 'interceptor/ping_interceptor.dart';

class NetworkService {
  static final _dio = Dio();

  // Network call
  NetworkService() {
    _dio.interceptors.addAll([
      PingInterceptor(dio: _dio),
      // NetworkInterceptor(dio: _dio),
      InterceptorsWrapper(
        onRequest: (options, handler) {
          log('Request => ${options.method} ${options.path}');
          log('Request contentType => ${options.contentType} ${options.headers}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          log('SUCCESS');
          log('Response => ${response.data}');
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          log('FAILURE');
          log('Error => ${e.message}');
          if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
            try {
              var response = await _dio.request(
                e.requestOptions.path,
                data: e.requestOptions.data,
                queryParameters: e.requestOptions.queryParameters,
                options: Options(
                  method: e.requestOptions.method,
                  headers: e.requestOptions.headers,
                ),
              );
              return handler.resolve(response);
            } catch (e) {
              return;
            }
          }
          return handler.next(e);
        },
      ),
    ]);
  }

  // static Future<String> refresh() async{++
  //   const path = 'checkToken';
  //        var token =  LocalDataStorage.instance.getToken();
  //        var request = await NetworkService.postRequestHanlder(path, )

  // }

  static Future<Response> postRequestHanlder(
    String path, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    _dio.options.baseUrl = ApiConfig.baseUrl;
    _dio.options.headers = ApiConfig.header;
    _dio.options.connectTimeout = ApiConfig.connectionTimeout;
    _dio.options.receiveTimeout = ApiConfig.receiveTimeout;
    return await _dio.post(
      path,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> postTokenHandler(
    String path, {
    required Options options,
    String? token,
  }) async {
    _dio.options.baseUrl = ApiConfig.baseUrl;
    _dio.options.connectTimeout = ApiConfig.connectionTimeout;
    _dio.options.receiveTimeout = ApiConfig.receiveTimeout;
    return await _dio.post(
      path,
      options: options,
    );
  }

  static Future<Response> postStringRequestHanlder(
    String path, {
    Map<String, dynamic>? query,
    required String data,
    String? token,
  }) async {
    _dio.options.baseUrl = ApiConfig.baseUrl;
    _dio.options.headers = ApiConfig.header;
    _dio.options.connectTimeout = ApiConfig.connectionTimeout;
    _dio.options.receiveTimeout = ApiConfig.receiveTimeout;
    return await _dio.post(
      path,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> getRequestHandler(
    String path, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    Options? options,
    String? token,
  }) async {
    _dio.options.baseUrl = ApiConfig.baseUrl;
    _dio.options.connectTimeout = ApiConfig.connectionTimeout;
    _dio.options.receiveTimeout = ApiConfig.receiveTimeout;
    return await _dio.get(
      path,
      data: data,
      queryParameters: query,
      options: options,
    );
  }

  static Future<Response> putRequestHandler(
    String path, {
    Map<String, dynamic>? query,
    Options? options,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    _dio.options.baseUrl = ApiConfig.baseUrl;
    _dio.options.connectTimeout = ApiConfig.connectionTimeout;
    _dio.options.receiveTimeout = ApiConfig.receiveTimeout;
    return await _dio.put(
      path,
      data: data,
      queryParameters: query,
      options: options,
    );
  }
}
