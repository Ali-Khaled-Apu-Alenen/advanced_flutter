import 'package:advanced_flutter/core/networking/api_services.dart';
import 'package:advanced_flutter/core/networking/api_error_handler.dart';
import 'package:advanced_flutter/core/networking/api_results.dart';
import 'package:advanced_flutter/features/login/data/model/login_request_api.dart';
import 'package:advanced_flutter/features/login/data/model/login_response_api.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
