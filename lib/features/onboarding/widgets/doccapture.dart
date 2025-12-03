import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocCapture extends StatelessWidget {
  const DocCapture({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("asset/svgs/Frame.svg"),
        SizedBox(width: 10.w,),
        Text("Docdoc",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.black),),
        

      ],
    );
  }
}
