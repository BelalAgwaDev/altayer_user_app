
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Hi! Welcome back, you've been missed",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall,
                
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
