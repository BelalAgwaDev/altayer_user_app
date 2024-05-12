import 'package:altayer/core/style/color/color_manger.dart';
import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/feature/signUp/bloc/sign_up_bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneTextFormField extends StatelessWidget {
  const PhoneTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
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
              onChanged: (value) {
                context.read<SignUpBloc>().add(UserSignUpPhoneEvent(value));
              },
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.phone,
              controller: context.read<SignUpBloc>().userSignUpPhone,
              decoration: InputDecoration(
                  prefixIcon: CountryCodePicker(
                    showFlagMain: false,
                    onChanged: (value) {},
                    textStyle: TextStyle(color: ColorManger.black26),
                    initialSelection: '+20',
                    favorite: const ['+20', '+39', 'FR', '+966'],
                    flagWidth: 20.r,
                    flagDecoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(2.r)),
                    dialogBackgroundColor: ColorManger.offWhite,
                    closeIcon: Icon(
                      Icons.close_rounded,
                      color: ColorManger.black54,
                    ),
                    showDropDownButton: true,
                  ),
                  hintText: AppStrings.enterPhoneNumber,
                  errorText: state.whenOrNull(
                    userSignUpPhone: (value) {
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
