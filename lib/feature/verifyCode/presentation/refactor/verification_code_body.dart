import 'package:altayer/core/common/toast/show_toast.dart';
import 'package:altayer/core/style/color/color_manger.dart';
import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/common/sharedWidget/custom_button.dart';
import 'package:altayer/feature/forgetPassword/bloc/forget_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            const VerifyCodeTextFormField(),
            SizedBox(
              height: 50.h,
            ),
            Text(
              AppStrings.didntRecieveotp,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 14.sp),
            ),
            SizedBox(
              height: 15.h,
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
            BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
              listener: (context, state) {
                state.whenOrNull(
                  verifyCodeError: (statesCode, errorMessage) =>
                      ShowToast.showToastErrorTop(
                          errorMessage: errorMessage, context: context),
                  verifyCodeSuceess: (data) => ShowToast.showToastSuccessTop(
                      message: data.message!, context: context),
                );
              },
              builder: (context, state) {
                return CustomButton(
                  onPressed: context
                          .read<ForgetPasswordBloc>()
                          .isVerifyCodeButtonVaildatorInVaildator
                      ? () {
                          context
                              .read<ForgetPasswordBloc>()
                              .add(const UserForgetPasswordVerifyButtonEvent());

                          // context.pushReplacementNamed(Routes.newPassword);
                        }
                      : null,
                  widget: state.maybeWhen(
                    verifyCodeLoading: () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: const CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2.0,
                            strokeAlign: 0.01,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          AppStrings.loading,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightManger.semiBold),
                        ),
                      ],
                    ),
                    orElse: () => Text(
                      AppStrings.verify,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeightManger.semiBold),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class VerifyCodeTextFormField extends StatelessWidget {
  const VerifyCodeTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VerificationCode(
      textStyle:
          Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18.sp),
      keyboardType: TextInputType.number,
      underlineColor: ColorManger.primary,
      fullBorder: true,
      margin: const EdgeInsets.all(2),
      length: 6,
      itemSize: 40.spMax,
      cursorColor: ColorManger.primary,
      onCompleted: (String value) {
        context
            .read<ForgetPasswordBloc>()
            .add(UserForgetPasswordOTPButtonEvent(value));
      },
      onEditing: (bool value) {},
    );
  }
}
