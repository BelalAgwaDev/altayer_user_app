import 'package:altayer/core/style/color/color_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:flutter/material.dart';

class OrSignInWithText extends StatelessWidget {
  const OrSignInWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 20,
            indent: 40,
            endIndent: 5,
            color: ColorManger.black26,
          ),
        ),
        Text(
          AppStrings.orSignInWith,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Expanded(
          child: Divider(
            height: 20,
            indent: 5,
            endIndent: 40,
            color: ColorManger.black26,
          ),
        ),
      ],
    );
  }
}
