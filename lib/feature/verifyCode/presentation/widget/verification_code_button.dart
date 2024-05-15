import 'package:altayer/core/common/sharedWidget/custom_button.dart';
import 'package:altayer/core/common/toast/show_toast.dart';
import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/utils/extensions.dart';
import 'package:altayer/feature/forgetPassword/bloc/forget_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationCodeButton extends StatelessWidget {
  const VerificationCodeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
            verifyCodeError: (statesCode, errorMessage) =>
                ShowToast.showToastErrorTop(
                    errorMessage: errorMessage, context: context),
            verifyCodeSuceess: (data) {
              ShowToast.showToastSuccessTop(
                  message: data.message!, context: context);
              context.pushReplacementNamed(Routes.newPassword);
            },
            error: (statesCode, errorMessage) => ShowToast.showToastErrorTop(
                errorMessage: errorMessage, context: context),
            suceess: (data) {
              ShowToast.showToastSuccessTop(
                  message: data.message!, context: context);
            });
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
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 14.sp, fontWeight: FontWeightManger.semiBold),
                ),
              ],
            ),
            orElse: () => Text(
              AppStrings.verify,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 14.sp, fontWeight: FontWeightManger.semiBold),
            ),
          ),
        );
      },
    );
  }
}
