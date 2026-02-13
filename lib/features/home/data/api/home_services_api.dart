import 'package:advanced_flutter/features/home/data/models/home_services_model.dart';
import 'package:advanced_flutter/core/networking/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'home_services_api.g.dart';
@RestApi(baseUrl:ConstantsApi.paseURL)
abstract class HomeServicesApi {
  factory HomeServicesApi(Dio dio, {String? baseUrl}) = _HomeServicesApi;

  @GET(ConstantsApi.homeURL)
  Future<SpicalizationDataResponseModel> getSpicalization();
}