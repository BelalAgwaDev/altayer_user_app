import 'package:altayer/feature/verifyCode/presentation/refactor/verification_code_body.dart';
import 'package:flutter/material.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const VerificationCodeBody(),
    );
  }
}

