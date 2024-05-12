import 'package:altayer/feature/forgetPassword/refactor/forget_password_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const ForgetPasswordBody(),
    );
  }
}

