import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/style/sharedWidget/custom_button.dart';
import 'package:altayer/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 80.h),
        child: Column(
          children: [
            Text(
              AppStrings.restYourPassword,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              AppStrings.enterYourEmailToSendVerifyCode,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100.h,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              // controller: context.read<LoginBloc>().userLoginEmailAddress,

              decoration: InputDecoration(
                prefixIcon: Icon(
                  IconlyBroken.message,
                  size: 18.sp,
                ),
                hintText: AppStrings.emailExample,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              onPressed: () {
                context.pushReplacementNamed(Routes.verificationCodeViewRoute);
              },
              text: Text(
                AppStrings.continueText,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 14.sp, fontWeight: FontWeightManger.semiBold),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  context.pushReplacementNamed(Routes.loginRoute);
                },
                child: Text(
                  AppStrings.backToLogin,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 15.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
