import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
            TextSpan(text: " and \n", style: TextStyles.font11grayRegular),
            TextSpan(
              text: "PrivacyPolicy.",
              style: TextStyles.font11BlackMedium,
            ),
          ],
        ),
      ),
    );
  }
}
