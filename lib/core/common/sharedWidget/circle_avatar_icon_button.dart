

import 'package:altayer/core/style/color/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleAvatarIconButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback function;

  const CircleAvatarIconButton({
    super.key,
    required this.imagePath,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: ColorManger.primary,
      borderRadius: BorderRadius.circular(20),
      onTap: function,
      child: CircleAvatar(
        maxRadius: 27.r,
        backgroundColor: Colors.black12,
        child: CircleAvatar(
          backgroundColor: ColorManger.offWhite,
          maxRadius: 25.r,
          child: Image.asset(
            imagePath,
            height: 26.h,
          ),
        ),
      ),
    );
  }
}