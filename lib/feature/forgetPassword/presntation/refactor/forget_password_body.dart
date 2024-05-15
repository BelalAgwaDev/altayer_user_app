import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/utils/extensions.dart';
import 'package:altayer/feature/forgetPassword/presntation/widget/email_forget_password_text_form_field.dart';
import 'package:altayer/feature/forgetPassword/presntation/widget/forget_password_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, top: 80.h, right: 25.w),
      child: SingleChildScrollView(
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
            const EmailForgetPasswordTextFormField(),
            SizedBox(
              height: 40.h,
            ),
            const ForgetPasswordButton(),
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


