import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/core/style/color/color_manger.dart';
import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/style/sharedWidget/custom_button.dart';
import 'package:altayer/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationCodeBody extends StatelessWidget {
  const VerificationCodeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
        child: Column(
          children: [
            Text(
              AppStrings.verifyCode,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              AppStrings.pleaseEnterTheCode,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "example@gmail.com",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 14.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60.h,
            ),
            VerificationCode(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 18.sp),
              keyboardType: TextInputType.number,
              underlineColor: ColorManger.primary,
              fullBorder: true,

              margin: const EdgeInsets.all(7),
              length: 4,
              cursorColor: ColorManger
                  .primary, // If this is null it will default to the ambient
              // clearAll is NOT required, you can delete it
              // takes any widget, so you can implement your design
              // clearAll: Padding(
              //   padding: EdgeInsets.all(30.h),
              //   child: Text(
              //     'clear all',
              //     style: Theme.of(context).textTheme.titleMedium!.copyWith(
              //           fontSize: 14.sp,
              //           decoration: TextDecoration.underline,
              //         ),

              //     //  TextStyle(
              //     //     fontSize: 14.sp,
              //     //     decoration: TextDecoration.underline,
              //     //     color: ColorManger.primary),
              //   ),
              // ),
              onCompleted: (String value) {
                // setState(() {
                //   _code = value;
                // });
              },
              onEditing: (bool value) {
                // setState(() {
                //   _onEditing = value;
                // });
                // if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              AppStrings.didntRecieveotp,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 14.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: Text(
                  AppStrings.resendCode,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 14.sp,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomButton(
              onPressed: () {
                // context.pushReplacementNamed(Routes.verificationCodeViewRoute);
                context.pushReplacementNamed(Routes.newPassword);
              },
              text: Text(
                AppStrings.verify,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 14.sp, fontWeight: FontWeightManger.semiBold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
