import 'package:advanced_flutter/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_flutter/features/home/logic/cubit/home_state.dart';
import 'package:advanced_flutter/features/home/widgets/Blue_Banner_container.dart';
import 'package:advanced_flutter/features/home/widgets/doctor_spiciality.dart';
import 'package:advanced_flutter/features/home/widgets/recommendation_doctor.dart';
import 'package:advanced_flutter/features/home/widgets/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getSpicalization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopAppBar(),
              BlueBannerContainer(),
              SizedBox(height: 16.h),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) =>
                    current is SpicalizationLoading ||
                    current is SpicalizationSuccess ||
                    current is SpicalizationError,
                builder: (context, state) {
                  return state.maybeMap(
                    spicalizationLoading: (SpicalizationLoading state) {
                      return SizedBox(
                        height: 100,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    },
                    spicalizationSuccess: (SpicalizationSuccess data) {
                      var spicalizationDatalist = data
                          .spicalizationDataResponseModel
                          .spicalizationDataList;
                      return Column(
                        children: [
                          DoctorSpiciality(
                            spicalizationDataList: spicalizationDatalist,
                          ),
                          SizedBox(height: 16.h),
                          RecommendationDoctor(
                            doctor:
                                spicalizationDatalist?[0]?.doctorsList ?? [],
                          ),
                        ],
                      );
                    },
                    spicalizationError: (SpicalizationError e) {
                      return Text("Error: ${e.errorHandle.apiErrorModel.message}");
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
