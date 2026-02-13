import 'package:advanced_flutter/core/di/dependency_injection.dart';
import 'package:advanced_flutter/core/route/route_settings.dart';
import 'package:advanced_flutter/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:advanced_flutter/core/functions/extentions.dart';
import 'package:advanced_flutter/core/helper/constatnts.dart';
import 'package:advanced_flutter/core/helper/shared_preferences_helper.dart';
bool isLoggedIn = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   checkLoginState();
  await setupGetIt();
  runApp(DocApp(appRouter: AppRouter(), isLoggedIn: isLoggedIn));
}
checkLoginState() async {
String ?  userToken = await SharedPreferencesHelper.getString(SharedPrefKeys.userTokenKey) ;
  if(!userToken.isEmptyOrNull){
    isLoggedIn = true;
  }else{
    isLoggedIn = false;
  }
}