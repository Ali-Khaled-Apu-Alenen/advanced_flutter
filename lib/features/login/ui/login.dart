import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/widgets/buttonwidgetfunc.dart';
import 'package:advanced_flutter/features/logic/cubit/login_cubit.dart';
import 'package:advanced_flutter/features/logic/cubit/login_state.dart';
import 'package:advanced_flutter/features/login/data/model/login_request_api.dart';
import 'package:advanced_flutter/features/login/ui/widgets/contenttext.dart';
import 'package:advanced_flutter/features/login/ui/widgets/icons_login_row.dart';
import 'package:advanced_flutter/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:advanced_flutter/features/login/ui/widgets/textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentText(),
              SizedBox(height: 10.h),
              TextForms(),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        BlocBuilder<LoginCubit, LoginState>(
                          // buildWhen: (previous, current) =>
                          //     current is RememmberMe ||
                          //     current is NoRememmberMe,
                          builder: (context, state) {
                            final cubit = context.read<LoginCubit>();
                            return Checkbox(
                              value: cubit.remmmberME,
                              onChanged: (val) {
                                cubit.emitRememmberMe();
                              },
                            );
                          },
                        ),
                        Text(
                          "Remember ME?",
                          style: TextStyles.font14textContentGray,
                        ),
                      ],
                    ),
                    InkWell(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font12TextContentBlueLight,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: ButtonWidgetFunc(
                  text: 'Login',
                  func: () {
                    validpasswordbloc(context);
                  },
                ),
              ),
              Center(
                child: InkWell(
                  child: Image.asset(
                    "asset/images/Text.png",
                    fit: BoxFit.contain,
                    width: 327.w,
                    height: 18.h,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              IconsLoginRow(),
              SizedBox(height: 20.h),
              Center(
                child: Text.rich(
                  textAlign: TextAlign.center,
                  //By logging, you agree to our  Terms & Conditions and PrivacyPolicy.
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "By logging, you agree to our ",
                        style: TextStyles.font11grayRegular,
                      ),
                      TextSpan(
                        text: " Terms & Conditions",
                        style: TextStyles.font11BlackMedium,
                      ),
                      TextSpan(
                        text: " and \n",
                        style: TextStyles.font11grayRegular,
                      ),
                      TextSpan(
                        text: "PrivacyPolicy.",
                        style: TextStyles.font11BlackMedium,
                      ),
                    ],
                  ),
                ),
              ),
              LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validpasswordbloc(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
