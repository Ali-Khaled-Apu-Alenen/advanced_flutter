import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/core/helper/shared_preferences_helper.dart';
import 'package:advanced_flutter/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttonwidget extends StatelessWidget {
  const Buttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.w,
      child: ElevatedButton(
        onPressed: () {
          SharedPreferencesHelper.setData("savedOnboarding", true);
          Navigator.pushNamed(context, Routes.loginpage);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Themes.defaultColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 14.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
