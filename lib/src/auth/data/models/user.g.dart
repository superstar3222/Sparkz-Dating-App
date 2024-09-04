part of 'user.dart';

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      profilePicture: json['profilePicture'] as String,
      token: json['token'] as String,
      verified: json['verified'] as bool,
      location: json['location'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'profilePicture': instance.profilePicture,
      'token': instance.token,
      'verified': instance.verified,
      'location': instance.location,
    };
