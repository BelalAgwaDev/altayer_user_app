import 'package:altayer/core/style/color/color_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneTextFormField extends StatelessWidget {
  const PhoneTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.phone,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          height: 8.h,
        ),
        TextFormField(
          onChanged: (value) {},
        
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          // controller: context.read<LoginBloc>().userLoginEmailAddress,
        
          decoration: InputDecoration(
            prefixIcon: CountryCodePicker(
              showFlagMain: false,
              onChanged: (value) {},
              initialSelection: '+20',
              favorite: const ['+20', '+39', 'FR', '+966'],
              flagWidth: 20.r,
              flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r)),
        
              dialogBackgroundColor: ColorManger.offWhite,
              closeIcon: Icon(
                Icons.close_rounded,
                color: ColorManger.black54,
              ),
              showDropDownButton: true,
        
              //showCountryOnly: true,
            ),
        
            // Icon(
            //   IconlyBroken.call,
            //   size: 18.sp,
            // ),
            hintText: AppStrings.enterPhoneNumber,
            // errorText: state.whenOrNull(
            //   userLoginEmailAddress: (value) {
            //     return value.isNotEmpty?value:null;
            //   },
        
            // )
          ),
        )
      ],
    );
  }
}