import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({Key? key}) : super(key: key);

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
                "Recommendation Doctors",
                style: TextStyles.font18TextSemiBoldDarkGray,
              ),
            ),
            Text("See All", style: TextStyles.font12RegularPrimaryBlueLight),
          ],
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 268.h,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(

                margin: EdgeInsets.only(bottom: 16.h,left: 16.w),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      "asset/images/doctor_ahmed.png",
                      width: 110.w,
                      height: 110.h,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Randy Wigham",
                          style: TextStyles.font16TextDarkGray,
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Cardiology",
                              style: TextStyles.font12textContentGray,
                            ),
                            Text(
                              " | ",
                              style: TextStyles.font12textContentGray,
                            ),
                            Text(
                              "RSUD Gatot Subroto",
                              style: TextStyles.font12textContentGray,
                            ),
                          ],
                        ),
                        Row(
                        
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            Text(
                              "4.5",
                              style: TextStyles.font12textContentGray,
                            ),
                            Text(
                              "(124 Reviews)",
                              style: TextStyles.font12textContentGray,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
