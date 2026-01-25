import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupContentText extends StatelessWidget {
  const SignupContentText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Create Account", style: TextStyles.font24primaryBold),
          SizedBox(height: 15),
          Text(
            "Sign up now and start exploring all that our\n app has to offer. We're excited to welcome\n you to our community!",
            style: TextStyles.font14textContentGray,
          ),
        ],
      ),
    );
  }
}
