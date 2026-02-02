import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable(createFactory: false)
class SignUpRequestBody {
  final String name;
  final String email;
  final int phone;
  final String password;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;
  final int gender;
  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
    required this.gender,
  });
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
