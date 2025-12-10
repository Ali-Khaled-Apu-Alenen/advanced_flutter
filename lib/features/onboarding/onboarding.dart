import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/features/onboarding/widgets/buttonwidget.dart';
import 'package:advanced_flutter/features/onboarding/widgets/doccapture.dart';
import 'package:advanced_flutter/features/onboarding/widgets/docimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            DocCapture(),
            SizedBox(height: 20.h),
            Docimagetransparent(),
            SizedBox(height: 20.h),
            Text(
              "Manage and schedule all of your medical appointments\n easily with Docdoc to get a new experience.",
              style: TextStyles.font12gray,
              textAlign: TextAlign.center,
            ),
          SizedBox(height:20.h ,),
          Buttonwidget(),
          ],
        ),
      ),
    );
  }
}
