part of 'login_response.dart';

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      token: json['token'] as String,
      message: json['message'] as String,
      status: json['status'] as int,
      success: json['success'] as bool,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'message': instance.message,
      'token': instance.token,
      'user': instance.user,
    };
