import 'dart:io';

class ApiConfig {
  static final ApiConfig _apiConfig = ApiConfig._internal();

  //  ** Singleton
  factory ApiConfig() => _apiConfig;

  ApiConfig._internal();
  static const String baseUrl = 'https://spark-dating-api.onrender.com/api/v1';
  static const String apikey = 'AIzaSyC6FjHR9e9VmVWl28hQRBYauAIPSNGtLXw';
  static String locationUrl(double latitude, double longitude) => 'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$apikey';

  static const Duration receiveTimeout = Duration(milliseconds: 10000);
  static const Duration connectionTimeout = Duration(milliseconds: 10000);
  static const header = {
    HttpHeaders.contentTypeHeader: 'application/json',
  };
}
// https://meet.google.com/adw-kynw-kgh