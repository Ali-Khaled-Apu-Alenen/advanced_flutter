import 'package:advanced_flutter/core/widgets/buttonwidgetfunc.dart';
import 'package:advanced_flutter/features/sign_up/logic/sign_up_cubit.dart';
import 'package:advanced_flutter/features/sign_up/ui/widgets/have_an_account.dart';
import 'package:advanced_flutter/features/sign_up/ui/widgets/signup_bloc_listener.dart';
import 'package:advanced_flutter/features/sign_up/ui/widgets/signup_content_text.dart';
import 'package:advanced_flutter/features/sign_up/ui/widgets/signup_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SignupContentText(),
              SizedBox(height: 12.h),
              SignUpTextForm(),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: ButtonWidgetFunc(
                  text: 'Sign Up',
                  func: () {
                    validPasswordBloc(context);
                  },
                ),
              ),
              HaveAnAccount(),
              SignupBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validPasswordBloc(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignupStates();
    }
  }
}
