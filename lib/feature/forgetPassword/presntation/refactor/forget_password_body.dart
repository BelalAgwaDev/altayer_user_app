import 'package:altayer/core/common/toast/show_toast.dart';
import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/common/sharedWidget/custom_button.dart';
import 'package:altayer/core/utils/app_regex.dart';
import 'package:altayer/core/utils/extensions.dart';
import 'package:altayer/feature/forgetPassword/bloc/forget_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
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
            BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
              builder: (context, state) {
                return TextFormField(
                  onChanged: (value) => context
                      .read<ForgetPasswordBloc>()
                      .add(UserForgetPasswordEmailAddressEvent(value)),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !AppRegex.isEmailValid(value)) {
                      return AppStrings.isEmailValid;
                    }
                    return null;
                  },
                  controller: context
                      .read<ForgetPasswordBloc>()
                      .userForgetPasswordEmailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        IconlyBroken.message,
                        size: 18.sp,
                      ),
                      hintText: AppStrings.emailExample,
                      errorText: state.whenOrNull(
                        userForgetEmailAddress: (value) {
                          return value.isNotEmpty ? value : null;
                        },
                      )),
                );
              },
            ),
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

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (statesCode, errorMessage) => ShowToast.showToastErrorTop(
              errorMessage: errorMessage, context: context),
          suceess: (data) => ShowToast.showToastSuccessTop(
              message: data.message!, context: context),
        );
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: context
                  .read<ForgetPasswordBloc>()
                  .isContinueForgetPasswordButtonVaildatorInVaildator
              ? () {
                  context
                      .read<ForgetPasswordBloc>()
                      .add(const UserForgetPasswordButtonEvent());
                  // context.pushReplacementNamed(Routes.verificationCodeViewRoute);
                }
              : null,
          widget: state.maybeWhen(
            loading: () => Row(
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
              AppStrings.continueText,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 14.sp, fontWeight: FontWeightManger.semiBold),
            ),
          ),
        );
      },
    );
  }
}
