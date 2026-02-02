import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconsLoginRow extends StatelessWidget {
  const IconsLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Themes.offWhite,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                "asset/icons/google.png",
                width: 36.w,
                height: 36.w,
              ),
            ),
          ),
          SizedBox(width: 18.w),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Themes.offWhite,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                "asset/icons/facebook.png",
                width: 36.w,
                height: 36.w,
              ),
            ),
          ),
          SizedBox(width: 18.w),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Themes.offWhite,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                "asset/icons/apple-logo.png",
                width: 36.w,
                height: 36.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
