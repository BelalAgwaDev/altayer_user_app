import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/utils/extensions.dart';
import 'package:altayer/feature/login/presentation/widget/email_login_text_form_field.dart';
import 'package:altayer/feature/login/presentation/widget/or_sign_in_with_text.dart';
import 'package:altayer/feature/login/presentation/widget/password_login_text_form_field.dart';
import 'package:altayer/feature/login/presentation/widget/sign_in_with_apple_face_book_and_google_button.dart';
import 'package:altayer/feature/login/presentation/widget/sign_in_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.signIn,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                AppStrings.hiWelcomeBack,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 60.h,
              ),
              const EmailLoginTextFormField(),
              SizedBox(
                height: 18.h,
              ),
              const PasswordLoginTextFormField(),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    context.pushReplacementNamed(Routes.forgetPasswordRoute);
                  },
                  child: Text(
                    AppStrings.forgetPassword,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const SignInButton(),
              SizedBox(
                height: 50.h,
              ),
              const OrSignInWithText(),
              SizedBox(
                height: 40.h,
              ),
              const SignInWithAppleFaceBookAndGoogleButton(),
              SizedBox(
                height: 40.h,
              ),
              Text.rich(
                  TextSpan(
                      text: AppStrings.dontHaveAnAccount,
                      style: const TextStyle(fontSize: 15),
                      children: [
                        WidgetSpan(
                            child: SizedBox(
                          width: 8.w,
                        )),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context
                                    .pushReplacementNamed(Routes.registerRoute);
                              },
                            text: AppStrings.signUp,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                ))
                      ]),
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
      ),
    );
  }
}

