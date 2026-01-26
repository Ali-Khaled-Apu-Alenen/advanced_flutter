import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable(createToJson: false)
class SignUpResponse {
  final String? message;
  @JsonKey(name: 'data', fromJson: _dataFromJson)
  final dynamic userData;
  final bool? status;
  final int? code;
  SignUpResponse({this.message, this.userData, this.status, this.code});
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  /// Handles API returning `data` as object (e.g. {token, user}) or string.
  /// Avoids cast throw so success responses parse correctly.
  static dynamic _dataFromJson(dynamic value) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is Map<String, dynamic>) {
      try {
        return UserDataResponse.fromJson(value);
      } catch (_) {
        return null;
      }
    }
    return null;
  }
}

@JsonSerializable(createToJson: false)
class UserDataResponse {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;
  UserDataResponse({this.token, this.userName});
  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);
}
