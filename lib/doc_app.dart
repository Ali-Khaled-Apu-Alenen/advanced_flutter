import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/core/helper/shared_preferences_helper.dart';
import 'package:advanced_flutter/core/route/route_settings.dart';
import 'package:advanced_flutter/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  final bool isLoggedIn;
  const DocApp({super.key, required this.appRouter, required this.isLoggedIn});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool?>(
      future: SharedPreferencesHelper.getBool("savedOnboarding"),
      builder: (context, snapshot) {
        bool sharedPreferencesHelper = snapshot.data ?? false;
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          child: MaterialApp(
            title: "doctors app",
            theme: ThemeData(
              primaryColor: Themes.defaultColor,
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: appRouter.generateRoute,
            initialRoute: sharedPreferencesHelper ? (isLoggedIn ? Routes.homePage : Routes.loginpage) : Routes.onboarding,
          ),
        );
      },
    );
  }
}
