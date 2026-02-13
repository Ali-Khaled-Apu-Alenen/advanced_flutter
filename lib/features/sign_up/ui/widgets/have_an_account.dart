import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/route/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: "Already have account?",
          style: TextStyles.font11BlackMedium,
          children: [
            TextSpan(
              text: "Login",
              style: TextStyles.font11BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, Routes.loginpage);
                },
            ),
          ],
        ),
      ),
    );
  }
}
