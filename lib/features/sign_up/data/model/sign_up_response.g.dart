// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      message: json['message'] as String?,
      userData: SignUpResponse._dataFromJson(json['data']),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );
