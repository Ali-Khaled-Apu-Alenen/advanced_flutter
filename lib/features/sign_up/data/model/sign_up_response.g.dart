// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      message: json['message'] as String?,
      userData: json['data'] as String?,
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(json['token'] as String, json['username'] as String);
