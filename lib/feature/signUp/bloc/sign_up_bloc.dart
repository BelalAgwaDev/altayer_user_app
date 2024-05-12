import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/utils/app_regex.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController userSignUpEmailAddress = TextEditingController();
  final TextEditingController userSignUpPassword = TextEditingController();
  final TextEditingController userSignUpFirstName = TextEditingController();
  final TextEditingController userSignUpLastName = TextEditingController();
  final TextEditingController userSignUpPhone = TextEditingController();
  bool showPass = true;
  bool agreeWithTerms = true;

  final signUpFormKey = GlobalKey<FormState>();
  SignUpBloc() : super(const _Initial()) {
    on<SignUpEvent>((event, emit) {
      if (event is UserSignUFirstNameEvent) {
        if (!AppRegex.isNameValid(event.value)) {
          emit(const SignUpState.userSignUpFirstName(
              AppStrings.pleaseEnterValidFirstName));
        } else {
          emit(const SignUpState.userSignUpFirstName(""));
        }
      }

      if (event is UserSignUpLastNameEvent) {
        if (!AppRegex.isNameValid(event.value)) {
          emit(const SignUpState.userSignUpLastName(
              AppStrings.pleaseEnterValidLastName));
        } else {
          emit(const SignUpState.userSignUpLastName(""));
        }
      }

      if (event is UserSignUpPhoneEvent) {
        if (!AppRegex.isPhoneNumberValid(event.value)) {
          emit(const SignUpState.userSignUpPhone(
              AppStrings.pleaseEnterValidPhoneNumber));
        } else {
          emit(const SignUpState.userSignUpPhone(""));
        }
      }

      if (event is UserSignUpEmailAddressEvent) {
        if (!AppRegex.isEmailValid(event.value)) {
          emit(const SignUpState.userSignUpEmailAddress(
              AppStrings.pleaseEnterValidEmail));
        } else {
          emit(const SignUpState.userSignUpEmailAddress(""));
        }
      }

      if (event is UserSignUpPasswordEvent) {
        if (!AppRegex.isPasswordValid(event.value)) {
          emit(const SignUpState.userSignUpPassword(
              AppStrings.pleaseEnterValidSignUpPhoneNumber));
        }
      }

      if (event is UserShowSignUpPasswordEvent) {
        showPass = !showPass;

        emit(
          SignUpState.showUserSignUpPassword(showPass),
        );
      }

      if (event is UserSignUpAgreeWithEvent) {
        agreeWithTerms = !agreeWithTerms;

        emit(
          SignUpState.signUpAgreeWith(agreeWithTerms),
        );
      }
    });
  }
}
