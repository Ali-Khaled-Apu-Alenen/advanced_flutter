import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/core/functions/navigate_context.dart';
import 'package:advanced_flutter/core/route/routes.dart';
import 'package:advanced_flutter/features/sign_up/data/model/sign_up_response.dart';
import 'package:advanced_flutter/features/sign_up/logic/sign_up_cubit.dart';
import 'package:advanced_flutter/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState<SignUpResponse>>(
      listenWhen: (previous, current) => current.maybeWhen(
        signUpLoading: () => true,
        signUpSuccess: (_) => true,
        signUpError: (_) => true,
        orElse: () => false,
      ),
      listener: (context, state) {
        state.whenOrNull(
          signUpLoading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(color: Themes.defaultColor),
              ),
            );
          },
          signUpSuccess: (successValue) {
            context.pop();
            context.pushNamed(Routes.loginpage);
          },
          signUpError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: TextStyles.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text('Got it', style: TextStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
