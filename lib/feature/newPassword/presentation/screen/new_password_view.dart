import 'package:altayer/feature/newPassword/presentation/refactor/new_password_body.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const NewPasswordBody(),
    );
  }
}




