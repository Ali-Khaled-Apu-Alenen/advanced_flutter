import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi,Ali",style: TextStyles.font18TextDarkBlueBold,textAlign: TextAlign.left,),
              SizedBox(height: 5,),
              Text("How Are you Today?",style: TextStyles.font11DarkGrayRegular,textAlign: TextAlign.left,),
            ],
          ),
      ),
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                
                color: Themes.offWhite,
                shape: BoxShape.circle,
              ),
            child: Image.asset("asset/images/Shape.png",width: 25.w,height:25.h,),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35.w,vertical: 15.h),
              child: Image.asset("asset/images/notif.png",width: 8.w,height: 8.h,),
            )
          ],
        )
        ],
      ); 
  }
}