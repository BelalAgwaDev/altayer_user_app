import 'package:altayer/core/application/di.dart';
import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/feature/login/bloc/login_bloc.dart';
import 'package:altayer/feature/onBoarding/presentation/screen/on_boarding_view.dart';
import 'package:altayer/feature/signUp/presentation/screen/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/login/presentation/screen/login_view.dart';
import '../../feature/splash/presentation/screen/splash_view.dart';
import '../style/fonts/strings_manger.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<LoginBloc>(),
            child: const LoginView(),
          ),
        );

      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
        body: const SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(child: Text(AppStrings.noRouteFound)),
        ),
      ),
    );
  }
}
