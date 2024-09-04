import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../app/core/services/api_url.dart';

class GeolocationService {
  static final GeolocationService instance = GeolocationService._init();

  factory GeolocationService() {
    return instance;
  }
  GeolocationService._init();

  Future<String> reverseGeolocation(LatLng position) async {
    final uri =
        Uri.parse(ApiConfig.locationUrl(position.latitude, position.longitude));
    final response = await Dio().getUri(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.data);
      final results = data['results'] as List;
      if (results.isNotEmpty) {
        final address = results[0]['formatted_address'];
        return address;
      } else {
        return 'Unknown location';
      }
    } else {
      throw Exception('Failed to reverse geocode location');
    }
  }
}
