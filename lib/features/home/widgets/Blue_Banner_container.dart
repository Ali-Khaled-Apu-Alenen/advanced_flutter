import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueBannerContainer extends StatelessWidget {
  const BlueBannerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 24.h,vertical: 16.h),
            height: 167.h,
            width: 343.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                image: AssetImage("asset/images/Background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and\nschedule with\nnearest doctor",
                  style: TextStyles.font18TextMediumWhite,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 16.h,),
                SizedBox(
                  width: 109.w,
                  height: 38.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.r),
                      ),
                    ),
                    onPressed: (){}, child: Text("Find Nearby",style: TextStyles.font12RegularPrimaryBlueLight,)),
                )
              ],
            ),
          ),
          Positioned(
            width: 136.w,
            height: 197.h,
           top: 0,
           right:  30.w,
            child: 
          Image.asset("asset/images/doctor.png",width: 25.w,height:25.h,),
          )
        ],
      ),
    );
  }
}
