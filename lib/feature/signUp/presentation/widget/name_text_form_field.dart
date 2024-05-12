import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameTextFormField extends StatelessWidget {
  const NameTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.firstName,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              TextFormField(
                onChanged: (value) {},
        
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                // controller: context.read<LoginBloc>().userLoginEmailAddress,
        
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    IconlyBroken.addUser,
                    size: 18.sp,
                  ),
                  hintText: AppStrings.nameExample,
                  // errorText: state.whenOrNull(
                  //   userLoginEmailAddress: (value) {
                  //     return value.isNotEmpty?value:null;
                  //   },
        
                  // )
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.lastName,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              TextFormField(
                onChanged: (value) {},
        
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                // controller: context.read<LoginBloc>().userLoginEmailAddress,
        
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    IconlyBroken.addUser,
                    size: 18.sp,
                  ),
                  hintText: AppStrings.nameExample,
                  // errorText: state.whenOrNull(
                  //   userLoginEmailAddress: (value) {
                  //     return value.isNotEmpty?value:null;
                  //   },
        
                  // )
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
