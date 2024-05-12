import 'package:altayer/core/style/color/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final Text text;

  CustomButton({
    super.key,
    color,
    required this.onPressed,
    required this.text,
  }) : color = onPressed == null ? ColorManger.black54 : ColorManger.primary;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: color),
      child: TextButton(onPressed: onPressed, child: text),
    );
  }
}
