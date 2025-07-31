// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String,
      status: json['status'] as String,
      userData: UserData.fromJson(json['userData'] as Map<String, dynamic>),
      code: json['code'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'userData': instance.userData,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      token: json['token'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
    };
