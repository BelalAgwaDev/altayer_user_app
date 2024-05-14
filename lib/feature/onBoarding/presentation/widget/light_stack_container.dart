import 'package:altayer/feature/onBoarding/logic/on_boarding_controller.dart';
import 'package:altayer/core/style/color/color_manger.dart';
import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/common/sharedWidget/custom_button.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LightContainer extends StatelessWidget {
  final OnBoardingController controllerDta;
  const LightContainer({
    super.key,
    required this.controllerDta,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 270.h),
        child: Container(
          height: 320.h,
          width: 300.w,
          decoration: BoxDecoration(
            color: ColorManger.black54,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controllerDta.textPageController,
                    itemCount: controllerDta.list.length,
                    onPageChanged: (index) =>
                        controllerDta.onPageChanged(index),
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 50.h,
                              ),
                              child: FadeInLeft(
                                child: Text(controllerDta.list[index].title,
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 28.h),
                              child: ZoomIn(
                                child: Text(controllerDta.list[index].subTitle,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h, right: 4.w, bottom: 15.h),
                child: SlideInLeft(
                  child: SmoothPageIndicator(
                      controller: controllerDta.textPageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          activeDotColor: ColorManger.amberAlpha,
                          spacing: 12,
                          dotHeight: 4.h,
                          dotWidth: 15.w,
                          dotColor: ColorManger.unselected)),
                ),
              ),
              ZoomIn(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                  child: CustomButton(
                    onPressed: () => controllerDta.goNext(),
                    widget: Text(
                      controllerDta.isLast
                          ? AppStrings.getStarted
                          : AppStrings.next,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeightManger.semiBold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

