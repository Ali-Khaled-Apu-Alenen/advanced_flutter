import 'package:advanced_flutter/core/networking/api_error_handler.dart';
import 'package:advanced_flutter/core/networking/api_results.dart';
import 'package:advanced_flutter/core/networking/api_services.dart';
import 'package:advanced_flutter/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:advanced_flutter/features/sign_up/data/model/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signup(
    SignUpRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
