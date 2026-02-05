import 'package:advanced_flutter/core/networking/api_results.dart';
import 'package:advanced_flutter/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:advanced_flutter/features/sign_up/data/model/sign_up_response.dart';
import 'package:advanced_flutter/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:advanced_flutter/features/sign_up/logic/sign_up_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class SignUpCubit extends Cubit<SignUpState<SignUpResponse>> {
  final SignupRepo _signupRepo;
  SignUpCubit(this._signupRepo)
    : super(const SignUpState<SignUpResponse>.initial());
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitSignupStates() async {
    emit(const SignUpState<SignUpResponse>.signUpLoading());
    final response = await _signupRepo.signup(
      SignUpRequestBody(
        name: name.text,
        email: email.text,
        phone: int.parse(phone.text),
        password: password.text,
        passwordConfirmation: passwordConfirmation.text,
        gender: 0,
      ),
    );
    response.when(
      success: (data) {
        emit(SignUpState<SignUpResponse>.signUpSuccess(data));
      },
      failure: (error) {
        emit(
          SignUpState<SignUpResponse>.signUpError(
            error: error.apiErrorModel.message ?? "",
          ),
        );
      },
    );
  }
}
