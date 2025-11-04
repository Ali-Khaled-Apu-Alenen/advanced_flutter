import 'package:advanced_flutter/core/defult_themes/themes.dart';
import 'package:advanced_flutter/core/route/route_settings.dart';
import 'package:advanced_flutter/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: "doctors app",
        theme:  ThemeData(
          primaryColor: Themes.defaultColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboarding,
      ), // typical phone size (width x height)
    );
  }
}
