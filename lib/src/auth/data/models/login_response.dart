import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final int status;
  final bool success;
  final String message;
  final String token;
  final User user;

  LoginResponse({
    required this.token,
    required this.message,
    required this.status,
    required this.success,
    required this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
