import 'package:altayer/core/common/toast/show_toast.dart';
import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/common/sharedWidget/custom_button.dart';
import 'package:altayer/feature/forgetPassword/bloc/forget_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 100.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                AppStrings.newPassword,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                AppStrings.youNewPasswordMustBeDifferent,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.password,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const NewPasswordTextFormField()
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const ConfirmNewPasswordTextFormField(),
              SizedBox(
                height: 35.h,
              ),
              const NewPasswordButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPasswordButton extends StatelessWidget {
  const NewPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordBloc, ForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          newPasswordError: (statesCode, errorMessage) =>
              ShowToast.showToastErrorTop(
                  errorMessage: errorMessage, context: context),
          newPasswordSuceess: (data) => ShowToast.showToastSuccessTop(
              message: data.message!, context: context),
        );
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: context
                  .read<ForgetPasswordBloc>()
                  .isCreateNewPasswordButtonInVaildator
              ? () {
                  context
                      .read<ForgetPasswordBloc>()
                      .add(const UserForgetNewPasswordButtonEvent());
                }
              : null,
          widget: state.maybeWhen(
            newPasswordLoading: () => Row(
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
              AppStrings.createNewPassword,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 14.sp, fontWeight: FontWeightManger.semiBold),
            ),
          ),
        );
      },
    );
  }
}

class ConfirmNewPasswordTextFormField extends StatelessWidget {
  const ConfirmNewPasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.confirmPassword,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 8.h,
            ),
            TextFormField(
              onChanged: (value) => context
                  .read<ForgetPasswordBloc>()
                  .add(UserConfirmForgetNewPasswordEvent(value)),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              controller:
                  context.read<ForgetPasswordBloc>().userConfirmNewPassword,
              obscureText:
                  context.read<ForgetPasswordBloc>().showConfirmNewPassword,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    IconlyBroken.lock,
                    size: 18.sp,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      context
                          .read<ForgetPasswordBloc>()
                          .add(const UserShowConfirmForgetNewPasswordEvent());
                    },
                    icon: context
                            .read<ForgetPasswordBloc>()
                            .showConfirmNewPassword
                        ? Icon(
                            IconlyBroken.show,
                            size: 25.sp,
                          )
                        : Icon(
                            IconlyBroken.hide,
                            size: 25.sp,
                          ),
                  ),
                  hintText: AppStrings.enterYourPassword,
                  errorText: state.whenOrNull(
                    userConfirmNewPassword: (value) {
                      return value.isNotEmpty ? value : null;
                    },
                  )),
            )
          ],
        );
      },
    );
  }
}

class NewPasswordTextFormField extends StatelessWidget {
  const NewPasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) => context
              .read<ForgetPasswordBloc>()
              .add(UserForgetNewPasswordEvent(value)),
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.visiblePassword,
          controller: context.read<ForgetPasswordBloc>().userNewPassword,
          obscureText: context.read<ForgetPasswordBloc>().showNewPassword,
          decoration: InputDecoration(
              prefixIcon: Icon(
                IconlyBroken.lock,
                size: 18.sp,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  context
                      .read<ForgetPasswordBloc>()
                      .add(const UserShowForgetNewPasswordEvent());
                },
                icon: context.read<ForgetPasswordBloc>().showNewPassword
                    ? Icon(
                        IconlyBroken.show,
                        size: 25.sp,
                      )
                    : Icon(
                        IconlyBroken.hide,
                        size: 25.sp,
                      ),
              ),
              hintText: AppStrings.enterYourPassword,
              errorText: state.whenOrNull(
                userNewPassword: (value) {
                  return value.isNotEmpty ? value : null;
                },
              )),
        );
      },
    );
  }
}
