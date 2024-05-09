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
//       elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//         textStyle: getBoldStyle(
//           fontSize: FontSize.s13.sp,
//           color: ColorManger.darkBlue,
//         ),
//         // primary: ColorManger.darkBlue,
//         // onPrimary: ColorManger.white,
//         // onSurface: ColorManger.white,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(APPSize.s24.sp)),
//         fixedSize: Size.fromHeight(AppPadding.p46.sp),
//       )),
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
            fontSize: 11.sp,
            color: ColorManger.black54,
            wordSpacing: 1.sp,
            height: 1.3.sp,
            letterSpacing: 0.8.sp),

        titleSmall: getMediumStyle(
          fontSize: 14.sp,
          color: ColorManger.black,
        ),
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
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 6.sp,
        ),
        filled: true,
        fillColor: ColorManger.white,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManger.primary),
            borderRadius: BorderRadius.circular(18.sp)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.sp),
            borderSide: BorderSide(color: ColorManger.black, width: 0.1.w)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.sp),
            borderSide: BorderSide(color: ColorManger.error, width: 0.1.w)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.sp),
            borderSide: BorderSide(color: ColorManger.error, width: 0.1.w)),
      ));
}
