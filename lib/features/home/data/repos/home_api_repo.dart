import 'package:advanced_flutter/features/home/data/api/home_services_api.dart';
import 'package:advanced_flutter/features/home/data/models/home_services_model.dart';
import 'package:advanced_flutter/core/networking/api_error_handler.dart';
import 'package:advanced_flutter/core/networking/api_results.dart';

class HomeApiRepo {
  final HomeServicesApi _homeServicesApi;
  HomeApiRepo(this._homeServicesApi);
  Future<ApiResult<SpicalizationDataResponseModel>> getSpicalization ()async{
    try {
      final result =await _homeServicesApi.getSpicalization();
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }

  }
}