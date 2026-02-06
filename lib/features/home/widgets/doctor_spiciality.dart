import 'package:advanced_flutter/core/defult_themes/textstyles.dart';
import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/features/home/data/models/home_services_model.dart';
import 'package:advanced_flutter/features/home/widgets/doctor_spicalitiy_list_veiw_item.dart';import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpiciality extends StatelessWidget {
final  List<SpicalizationData?>? spicalizationDataList;
  const DoctorSpiciality({super.key, this.spicalizationDataList});

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
            itemCount: spicalizationDataList?.length??0,
            itemBuilder: (context, index) {
              return DoctorSpicalitiyListVeiwItem(index: index,spicalizationData: spicalizationDataList?[index],);
            },
          ),
        ),
      ],
    );
  }
}
