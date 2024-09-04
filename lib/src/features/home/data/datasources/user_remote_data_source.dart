import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../app/core/core.dart';
import '../../../../../app/core/network/dio_client.dart';

abstract class UserRemoteDataSource {
  Future<Response> getAllUsers();
  Future<Response> sendUserLocation(SendUserLocationEvent event);
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<Response> getAllUsers() async {
    // var token = await LocalDataStorage.instance.getToken();
    var response = await NetworkService.getRequestHandler(
      '/user/getNearbyUsers',
      // options: Options(
      //   headers: {
      //     'x-auth-token': token,
      //   },
      // ),
    );
    return response;
  }

  @override
  Future<Response> sendUserLocation(SendUserLocationEvent event) async {
    var token = await LocalDataStorage.instance.getToken();
    var response = await NetworkService.putRequestHandler(
      '/user/sendLocation',
      data: {
        '_id': event.id,
        'location': event.location,
      },
      options: Options(
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          'x-auth-token': token,
        },
      ),
    );
    return response;
  }
}
