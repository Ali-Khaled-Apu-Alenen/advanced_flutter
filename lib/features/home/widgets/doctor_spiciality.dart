import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpiciality extends StatelessWidget {
  const DoctorSpiciality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 292.w,
              child: Text(
                "Doctors Speciality",
                style: TextStyles.font18TextSemiBoldDarkGray,
              ),
            ),
            Text("See All", style: TextStyles.font12RegularPrimaryBlueLight),
          ],
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding:  EdgeInsetsDirectional.only(start: index==0?0:16),
                    child: CircleAvatar(
                      
                      radius: 24.r,
                      backgroundColor: Themes.textContentVeryLightGray,
                      child: Image.asset(
                        "asset/images/doctor_png_spicialist.png",
                        width: 24.w,
                        height: 24.h,
                        // colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text("General", style: TextStyles.font12textContentDarkGray),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
