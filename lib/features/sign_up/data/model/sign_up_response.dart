import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable(createToJson: false)
class SignUpResponse {
  final String? message;
  @JsonKey(name: 'data')
  final String? userData;
  final bool? status;
  final int? code;
  SignUpResponse({this.message, this.userData, this.status, this.code});
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class UserDataResponse {
  final String token;
  @JsonKey(name: 'username')
  final String userName;
  UserDataResponse(this.token, this.userName);
  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);
}
