import 'package:advanced_flutter/core/di/dependency_injection.dart';
import 'package:advanced_flutter/core/route/route_settings.dart';
import 'package:advanced_flutter/doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
