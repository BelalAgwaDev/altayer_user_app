import 'package:altayer/feature/onBoarding/logic/on_boarding_controller.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewImage extends StatelessWidget {
  final OnBoardingController controllerDta;
  const PageViewImage({
    super.key,
    required this.controllerDta,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controllerDta.imagePageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controllerDta.list.length,
        onPageChanged: (index) => controllerDta.onPageChanged(index),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 70.w,
              ),
              child: Center(
                child: ElasticInLeft(
                  child: Image.asset(
                    controllerDta.list[index].image,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
