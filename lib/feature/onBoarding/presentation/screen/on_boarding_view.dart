import 'package:altayer/feature/onBoarding/logic/on_boarding_controller.dart';
import 'package:altayer/feature/onBoarding/presentation/refactor/on_boarding_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../core/style/fonts/strings_manger.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      init: OnBoardingController(),
      builder: (controllerDta) {
        return Scaffold(
            appBar: AppBar(
              actions: [
                TextButton(
                  onPressed: () => controllerDta.navigationToLoginRoute(),
                  child: Text(
                    AppStrings.skip,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
              ],
            ),
            body: OnBoardingBody(controllerDta: controllerDta));
      },
    );
  }
}
