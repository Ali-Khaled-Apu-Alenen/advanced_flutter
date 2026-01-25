import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/route/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Or you dont have an account?",
              style: TextStyles.font11BlackMedium,
            ),
            TextSpan(
              text: "sign Up",
              style: TextStyles.font11BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, Routes.signUpPage);
                },
            ),
          ],
        ),
      ),
    );
  }
}
