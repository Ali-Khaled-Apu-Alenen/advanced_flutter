import 'package:advanced_flutter/core/networking/api_constants.dart';
import 'package:advanced_flutter/features/login/data/model/login_request_api.dart';
import 'package:advanced_flutter/features/login/data/model/login_response_api.dart';
import 'package:advanced_flutter/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:advanced_flutter/features/sign_up/data/model/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ConstantsApi.paseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ConstantsApi.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ConstantsApi.signup)
  Future<SignUpResponse> signup(@Body() SignUpRequestBody signUpRequestBody);
}
