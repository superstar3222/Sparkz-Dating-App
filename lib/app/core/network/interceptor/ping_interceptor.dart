import 'dart:developer';

import 'package:dating_app/app/core/services/api_url.dart';
import 'package:dio/dio.dart';

class PingInterceptor extends Interceptor {
   final Dio dio;
  PingInterceptor({required this.dio});
  @override
  onRequest(options, handler) async {
    // Try to make a ping request to the API.
    final pingResponse = await dio.get(ApiConfig.baseUrl);

    // If the ping request was successful, then the API is still awake.
    if (pingResponse.statusCode == 200) {
      return handler.next(options);
    } else {
      // The API is not awake, so try to refresh it.
      await dio.get(ApiConfig.baseUrl);
      return handler.next(options);
    }
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
    if (err.response?.statusCode == 401) {
      try {
        var response = await Dio().request(
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
