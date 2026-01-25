import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/core/helper/app_regex.dart';
import 'package:advanced_flutter/core/widgets/text_form_func.dart';
import 'package:advanced_flutter/features/login/ui/widgets/password_validattes.dart';
import 'package:advanced_flutter/features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});

  @override
  State<SignUpTextForm> createState() => _nameState();
}

class _nameState extends State<SignUpTextForm> {
  bool observertext = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController? passwordcontroller;
  @override
  void initState() {
    super.initState();
    passwordcontroller = context.read<SignUpCubit>().password;
    passwordvalidcontroller();
  }

  void passwordvalidcontroller() {
    passwordcontroller!.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordcontroller!.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordcontroller!.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordcontroller!.text,
        );
        hasNumber = AppRegex.hasNumber(passwordcontroller!.text);
        hasMinLength = AppRegex.hasMinLength(passwordcontroller!.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
            child: TextFormFunc(
              hintName: "Email",
              suffixIcon: Icon(Icons.email),
              controller: context.read<SignUpCubit>().email,
              validate: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "Please enter valid email";
                }
              },
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
            child: TextFormFunc(
              hintName: "Password",
              obsecureText: observertext,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    observertext = !observertext;
                  });
                },
                child: observertext
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility, color: Themes.defaultColor),
              ),
              controller: context.read<SignUpCubit>().password,

              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid password";
                }
              },
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
            child: TextFormFunc(
              hintName: "Confirm Password",
              obsecureText: observertext,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    observertext = !observertext;
                  });
                },
                child: observertext
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility, color: Themes.defaultColor),
              ),
              controller: context.read<SignUpCubit>().passwordConfirmation,

              validate: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid password";
                } else if (context
                        .read<SignUpCubit>()
                        .passwordConfirmation
                        .text !=
                    context.read<SignUpCubit>().password.text) {
                  return "The confirm password is not the same .";
                }
              },
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
            child: TextFormFunc(
              hintName: "Your phone",
              suffixIcon: Icon(Icons.email),
              controller: context.read<SignUpCubit>().phone,
              validate: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return "Please enter valid phone";
                }
              },
            ),
          ),
          PasswordValidates(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordcontroller!.dispose();
    super.dispose();
  }
}
