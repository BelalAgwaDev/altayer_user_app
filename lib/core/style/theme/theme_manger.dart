import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/color_manger.dart';
import 'package:flutter/services.dart';
// import 'package:sizer/sizer.dart';
//
// import 'color_manger.dart';
// import 'font_manger.dart';
import '../fonts/styles_manger.dart';

// import 'values_manger.dart';
//
ThemeData getApplicationTheme() {
  return ThemeData(
//
// //main color
//       primaryColor: ColorManger.gradationLightBlue,
      scaffoldBackgroundColor: ColorManger.offWhite,
// //Button theme
//       buttonTheme: ButtonThemeData(
//           buttonColor: ColorManger.lightBlue,
//           disabledColor: ColorManger.darkBlue,
//           splashColor: ColorManger.blue,
//           shape: const StadiumBorder()),
//
// //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: ColorManger.primary,

        textStyle: getSemiBoldStyle(
          fontSize: 14.sp,
          color: ColorManger.white,
        ),

        // onPrimary: ColorManger.white,
        // onSurface: ColorManger.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        fixedSize: Size.fromHeight(40.h),
      )),
//
// //appbar theme
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManger.offWhite,
              statusBarIconBrightness: Brightness.dark),
          // centerTitle: true,
          // elevation: 0,
          // iconTheme: IconThemeData(
          //   color: Colors.black,
          //   size: AppPadding.p22.sp,
          // ),
          // titleTextStyle: getMediumStyle(
          //   fontSize: FontSize.s20.sp,
          //   color: ColorManger.black,
          // ),
          color: ColorManger.offWhite),

// //text theme
//
      textTheme: TextTheme(
// using in text on boarding
        titleLarge: getBlackStyle(
            fontSize: 26.sp,
            color: ColorManger.white,
            letterSpacing: 1.sp,
            wordSpacing: 1.sp,
            height: 0.8.sp),

        //using in profile page
        headlineSmall: getSemiBoldStyle(
            fontSize: 11.sp,
            color: ColorManger.amberAlpha,
            wordSpacing: 1.sp,
            height: 1.3.sp,
            letterSpacing: 0.8.sp),

        bodySmall: getSemiBoldStyle(
            fontSize: 12.sp,
            color: ColorManger.black54,
            wordSpacing: 1.sp,
            height: 1.3.sp,
            letterSpacing: 0.8.sp),

        titleSmall: getMediumStyle(
          fontSize: 14.sp,
          color: ColorManger.black,
        ),

        titleMedium:
            getSemiBoldStyle(fontSize: 12.sp, color: ColorManger.primary),
      ),

// // using in text on boarding

//
// //use in on boarding  button
//         titleSmall: getSemiBoldStyle(
//           fontSize: FontSize.s12.sp,
//           color: ColorManger.black,
//         ),
//
// //use in on boarding  button
//         headlineLarge: getMediumStyle(
//           fontSize: FontSize.s12.sp,
//           color: ColorManger.white,
//         ),
//           //use in on about profile page
//         bodyLarge: getMediumStyle(
//             fontSize:FontSize.s14.sp,
//             color: ColorManger.blackText),
//       ),
//
// input decoration theme ( text form field )
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        prefixStyle: getMediumStyle(
          fontSize: 13.sp,
          color: ColorManger.black26,
        ),
        hintStyle: getMediumStyle(
          fontSize: 13.sp,
          color: ColorManger.black26,
        ),
        errorStyle: TextStyle(
            fontSize: 11.sp,
            fontFamily: FontConsistent.fontFamilyCairo,
            fontWeight: FontWeight.w500),
        prefixIconColor: ColorManger.black26,
        suffixIconColor: ColorManger.black26,
        labelStyle: getMediumStyle(
          fontSize: 10.sp,
          color: ColorManger.black26,
        ),
        filled: true,
        fillColor: ColorManger.offWhite,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManger.selected),
            borderRadius: BorderRadius.circular(12.r)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide:
                BorderSide(color: ColorManger.unselected, width: 0.4.w)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: ColorManger.redError, width: 0.4.w)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: ColorManger.redError, width: 0.4.w)),
      ));
}
