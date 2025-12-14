import 'package:advanced_flutter/core/di/dependency_injection.dart';
import 'package:advanced_flutter/core/route/routes.dart';
import 'package:advanced_flutter/features/login/ui/login.dart';
import 'package:advanced_flutter/features/logic/cubit/login_cubit.dart';
import 'package:advanced_flutter/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());
      case Routes.loginpage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<LoginCubit>(),
            child: const Login(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}