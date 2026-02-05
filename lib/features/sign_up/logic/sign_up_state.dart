import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.signUpLoading() = _SignUpLoading;
  const factory SignUpState.signUpSuccess(T data) = _SignUpSuccess<T>;
  const factory SignUpState.signUpError({required String error}) = _SignUpError;
}
