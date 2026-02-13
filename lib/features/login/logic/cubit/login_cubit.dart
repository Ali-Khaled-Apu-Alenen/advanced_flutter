import 'package:advanced_flutter/core/helper/constatnts.dart';
import 'package:advanced_flutter/core/helper/shared_preferences_helper.dart';
import 'package:advanced_flutter/core/networking/api_results.dart';
import 'package:advanced_flutter/core/networking/dio_factory.dart';
import 'package:advanced_flutter/features/login/logic/cubit/login_state.dart';
import 'package:advanced_flutter/features/login/data/model/login_request_api.dart';
import 'package:advanced_flutter/features/login/data/repo/login_repo_api.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool remmmberME = false;
  final formKey = GlobalKey<FormState>();

  void emitRememmberMe() {
    remmmberME = !remmmberME;
    if (remmmberME) {
      emit(const LoginState.rememmberMe());
    } else {
      emit(const LoginState.norememmberMe());
    }
  }

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async{
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
 Future<void> saveUserToken(String token) async {
    await SharedPreferencesHelper.setData(SharedPrefKeys.userTokenKey, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
