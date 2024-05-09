import 'package:altayer/feature/splash/presentation/refactor/splash_body.dart';
import 'package:flutter/material.dart';




class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const SplashBody()
        );
  }
}


