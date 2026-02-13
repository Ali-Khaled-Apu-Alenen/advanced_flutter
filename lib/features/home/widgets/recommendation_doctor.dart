import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/features/home/data/models/home_services_model.dart';
import 'package:advanced_flutter/features/home/widgets/recommendation_list_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RecommendationDoctor extends StatelessWidget {

  final List<Doctor?> doctor;
  const RecommendationDoctor({
    Key? key,
    required this.doctor,
  }) : super(key: key);

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
            itemCount:doctor.length,
            itemBuilder: (context, index) {
              return RecommendationListVeiw(
                index: index,
                doctorModel: doctor[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
