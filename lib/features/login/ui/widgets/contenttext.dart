import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentText extends StatelessWidget {
  const ContentText({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back", style: TextStyles.font24primaryBold),
            SizedBox(height: 15,),
            Text(
              "We're excited to have you back, can't wait to\n see what you've been up to since you last\n logged in.",
              style: TextStyles.font14textContentGray,
            ),
          ],
        ),
      )
    ;
  }
}
