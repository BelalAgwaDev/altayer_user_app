import 'package:altayer/core/style/fonts/font_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/style/sharedWidget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 80.h),
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
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.visiblePassword,
                    // controller: context.read<LoginBloc>().userLoginPassword,
                    // obscureText: context.read<LoginBloc>().showPass,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        IconlyBroken.lock,
                        size: 18.sp,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          // context
                          //     .read<LoginBloc>()
                          //     .add(const UserShowLoginPassword()),
                          icon:
                              //context.read<LoginBloc>().showPass
                              // ?
                              Icon(
                            IconlyBroken.show,
                            size: 25.sp,
                          )
                          // : Icon(
                          //     IconlyBroken.hide,
                          //     size: 25.sp,
                          //   ),
                          ),
                      hintText: AppStrings.enterYourPassword,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
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
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.visiblePassword,
                    //   controller: context.read<LoginBloc>().userLoginPassword,
                    // obscureText: context.read<LoginBloc>().showPass,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        IconlyBroken.lock,
                        size: 18.sp,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          // context
                          //     .read<LoginBloc>()
                          //     .add(const UserShowLoginPassword()),
                          icon:
                              //context.read<LoginBloc>().showPass
                              // ?
                              Icon(
                            IconlyBroken.show,
                            size: 25.sp,
                          )
                          // : Icon(
                          //     IconlyBroken.hide,
                          //     size: 25.sp,
                          //   ),
                          ),
                      hintText: AppStrings.enterYourPassword,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              CustomButton(
                onPressed: () {},
                text: Text(
                  AppStrings.createNewPassword,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 14.sp, fontWeight: FontWeightManger.semiBold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
