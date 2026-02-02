import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Docimagetransparent extends StatelessWidget {
  const Docimagetransparent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("asset/svgs/low_opacity_background.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.1, 0.5],
            ),
          ),
          child: Image.asset("asset/images/onboarding_doctor.png"),
        ),
        Positioned(
          bottom: 30.h,
          left: 0.w,
          right: 0.w,
          child: Text(
            "Best Doctor\n Appointment App",
            style: TextStyles.font24primaryBold.copyWith(fontSize: 32.sp),
            textAlign: TextAlign.center,
          ),
        ),

      ],
    );
  }
}
