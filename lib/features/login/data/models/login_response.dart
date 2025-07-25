import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  final String message;
  final String status;
  final UserData userData;
  final String code;

  LoginResponse({required this.message, required this.status, required this.userData, required this.code});
factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

}
@JsonSerializable()
class UserData {
  final String token;
  final String username;

  UserData({required this.token, required this.username});

factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);

}