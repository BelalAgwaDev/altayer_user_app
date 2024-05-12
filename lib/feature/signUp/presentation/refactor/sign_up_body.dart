import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/style/sharedWidget/custom_button.dart';
import 'package:altayer/feature/signUp/presentation/widget/agree_with_terms_condition.dart';
import 'package:altayer/feature/signUp/presentation/widget/already_have_an_account_text.dart';
import 'package:altayer/feature/signUp/presentation/widget/email_sign_up_text_form_field.dart';
import 'package:altayer/feature/signUp/presentation/widget/name_text_form_field.dart';
import 'package:altayer/feature/signUp/presentation/widget/or_sign_up_with.dart';
import 'package:altayer/feature/signUp/presentation/widget/password_sign_up_text_form_field.dart';
import 'package:altayer/feature/signUp/presentation/widget/phone_text_form_field.dart';
import 'package:altayer/feature/signUp/presentation/widget/sign_up_using_google_apple_face_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppStrings.createAccount,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  AppStrings.fillYouInformation,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const NameTextFormField(),
                SizedBox(
                  height: 10.h,
                ),
               const EmailSignUpTextFormField(),
                SizedBox(
                  height: 10.h,
                ),
                const PasswordSignUpTextFormField(),
                SizedBox(
                  height: 10.h,
                ),
                const PhoneTextFormField(),
                SizedBox(
                  height: 15.h,
                ),
                const AgreeWithTermsCondition(),
                SizedBox(
                  height: 15.h,
                ),
                CustomButton(
                  onPressed: () {},
                  text: Text(
                    AppStrings.signUp,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeightManger.semiBold),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
               const OrSignUpWith(),
                SizedBox(
                  height: 30.h,
                ),
               const SignUpUsingGoogleAppleFaceBook(),
                SizedBox(
                  height: 30.h,
                ),
                const AlreadyHaveAnAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
