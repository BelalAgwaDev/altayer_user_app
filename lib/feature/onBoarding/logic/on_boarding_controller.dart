import 'package:altayer/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/services/app_storage.dart';
import '../../../core/application/di.dart';
import '../../../core/style/images/asset_manger.dart';
import '../../resources/constant_manger.dart';

import '../../../core/style/fonts/strings_manger.dart';
import '../data/model/on_boarding_model.dart';

abstract class _OnBoardingControllerInput {
//this class using to handling function
  void goNext(); //user click  on right arrow or swipe left
  void onPageChanged(int index); // on page change
  void navigationToLoginRoute(); // used to go in login page
  List<SliderObject>
      getSliderData(); // this function used to add dummy data into slider
}

class OnBoardingController extends GetxController
    implements _OnBoardingControllerInput {
  final AppPreferences appPreferences = instance<AppPreferences>();
  //create list from slider object model
  late final List<SliderObject> list;
  final PageController textPageController = PageController();
  final PageController imagePageController = PageController();
  bool isLast = false;

  @override
  void onInit() {
    list = getSliderData();
    super.onInit();
  }


  @override
  void navigationToLoginRoute() {
    appPreferences.setOnBoardingScreenView();

    Get.offAllNamed(Routes.loginRoute);
  }

  @override
  void goNext() {
    if (isLast == true) {
      navigationToLoginRoute();
    } else {
      textPageController.nextPage(
          duration: const Duration(milliseconds: AppConstant.pageViewDelay),
          curve: Curves.easeInOutCubic);

      imagePageController.nextPage(
          duration: const Duration(milliseconds: AppConstant.pageViewDelay),
          curve: Curves.fastEaseInToSlowEaseOut);
    }
  }

  @override
  void onPageChanged(int index) {

    if (index ==  2) {

      isLast = true;
      update();
    }
  }

  @override
  List<SliderObject> getSliderData() => [
        SliderObject(
            title: AppStrings.onBoardingTitle1,
            subTitle: AppStrings.onBoardingSubTitle1,
            image: ImageAsset.onBoarding1),
        SliderObject(
            title: AppStrings.onBoardingTitle2,
            subTitle: AppStrings.onBoardingSubTitle2,
            image: ImageAsset.onBoarding2),
        SliderObject(
            title: AppStrings.onBoardingTitle3,
            subTitle: AppStrings.onBoardingSubTitle3,
            image: ImageAsset.onBoarding3),
      ];
}
