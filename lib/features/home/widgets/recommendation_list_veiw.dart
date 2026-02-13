import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/features/home/data/models/home_services_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationListVeiw extends StatelessWidget {
final int index;
final Doctor? doctorModel;
  const RecommendationListVeiw({Key? key, required this.index, this.doctorModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

                margin: EdgeInsets.only(bottom: 16.h,left: 16.w),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.network(
                      doctorModel?.photo ?? "https://vcare.in/images/doctor_png_spicialist.png",
                      width: 110.w,
                      height: 110.h,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 110.w,
                          height: 110.h,
                          color: Colors.grey[300],
                          child: Icon(Icons.person, size: 40.w, color: Colors.grey[600]),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctorModel?.name??"",
                          style: TextStyles.font16TextDarkGray,
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              doctorModel?.degree??"",
                              style: TextStyles.font12textContentGray,
                            ),
                            Text(
                              " | ",
                              style: TextStyles.font12textContentGray,
                            ),
                            Text(
                          doctorModel?.phone??"",
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
  }
}