import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/features/home/data/models/home_services_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpicalitiyListVeiwItem extends StatelessWidget {
final int index;
final SpicalizationData? spicalizationData;
  const DoctorSpicalitiyListVeiwItem({Key? key, required this.index, this.spicalizationData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Container(
                    padding:  EdgeInsetsDirectional.only(start: index==0?0:16),
                    child: CircleAvatar(
                      
                      radius: 24.r,
                      backgroundColor: Themes.textContentVeryLightGray,
                      child: Image.network(
                        "https://vcare.in/images/doctor_png_spicialist.png",
                        width: 24.w,
                        height: 24.h,
                        // colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(spicalizationData?.name??"", style: TextStyles.font12textContentDarkGray),
                ],
              );
  }
}