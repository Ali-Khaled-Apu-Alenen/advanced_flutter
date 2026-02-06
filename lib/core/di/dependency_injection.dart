import 'package:advanced_flutter/core/networking/api_services.dart';
import 'package:advanced_flutter/core/networking/dio_factory.dart';
import 'package:advanced_flutter/features/home/data/api/home_services_api.dart';
import 'package:advanced_flutter/features/home/data/repos/home_api_repo.dart';
import 'package:advanced_flutter/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_flutter/features/login/data/repo/login_repo_api.dart';
import 'package:advanced_flutter/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:advanced_flutter/features/sign_up/logic/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // // home
  getIt.registerLazySingleton<HomeServicesApi>(() => HomeServicesApi(dio));
  getIt.registerLazySingleton<HomeApiRepo>(() => HomeApiRepo(getIt()));
}

