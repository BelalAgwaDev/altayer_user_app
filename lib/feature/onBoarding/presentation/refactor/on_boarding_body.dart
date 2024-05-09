import 'package:altayer/feature/onBoarding/logic/on_boarding_controller.dart';
import 'package:altayer/feature/onBoarding/presentation/widget/light_stack_container.dart';
import 'package:altayer/feature/onBoarding/presentation/widget/page_view_image.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  final OnBoardingController controllerDta;

  const OnBoardingBody({
    super.key,
    required this.controllerDta,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // this widget using to move on boarding image
        PageViewImage(controllerDta: controllerDta),
        //this widget container text and button and used to move them
        LightContainer(controllerDta: controllerDta),
      ],
      // );
      //}
    );
  }
}
