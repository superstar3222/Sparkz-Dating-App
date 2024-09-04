import 'dart:developer';

import 'package:dio/dio.dart';

class NetworkInterceptor extends Interceptor {
  final Dio dio;
  NetworkInterceptor({required this.dio});
  @override
  onRequest(options, handler) {
    log('Request => ${options.method} ${options.path}');
    log('Request contentType => ${options.contentType} ${options.headers}');
    return handler.next(options);
  }

  @override
  onResponse(response, handler) {
    log('SUCCESS');
    log('Response => ${response.data}');
    return handler.next(response);
  }

  @override
  onError(DioException err, handler) async {
    log('FAILURE');
    log('Error => ${err.message}');
    if (err.response?.statusCode == 400 || err.response?.statusCode == 401) {
      try {
        var response = await dio.request(
          err.requestOptions.path,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
          options: Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
          ),
        );
        return handler.resolve(response);
      } catch (e) {
        return;
      }
    }
    return handler.next(err);
  }
}
