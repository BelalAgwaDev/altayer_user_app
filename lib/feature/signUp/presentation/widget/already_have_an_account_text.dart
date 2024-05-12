import 'package:altayer/core/routing/routes.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/utils/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            text: AppStrings.alreadyHaveAccount,
            style: const TextStyle(fontSize: 15),
            children: [
              WidgetSpan(
                  child: SizedBox(
                width: 8.w,
              )),
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.pushReplacementNamed(Routes.loginRoute);
                    },
                  text: AppStrings.signIn,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ))
            ]),
        style: Theme.of(context).textTheme.bodyLarge);
  }
}
