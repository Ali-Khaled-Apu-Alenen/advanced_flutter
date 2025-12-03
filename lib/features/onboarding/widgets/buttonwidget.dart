import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttonwidget extends StatelessWidget {
  const Buttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.w,
      
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Themes.defaultColor,
          foregroundColor: Colors.white,
          
          padding: EdgeInsets.symmetric( vertical: 14.h),
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
