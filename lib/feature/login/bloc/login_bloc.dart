import 'package:altayer/core/style/fonts/strings_manger.dart';
import 'package:altayer/core/utils/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final TextEditingController userLoginEmailAddress = TextEditingController();
  final TextEditingController userLoginPassword = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  bool showPass = true;

  LoginBloc() : super(const _Initial()) {
    on<LoginEvent>((event, emit) {
      if (event is UserLoginEmailAddress) {
        if (!AppRegex.isEmailValid(event.value)) {
          emit(const LoginState.userLoginEmailAddress(
              AppStrings.pleaseEnterValidEmail));
        } else {
          emit(const LoginState.userLoginEmailAddress(""));
        }
      }

      if (event is UserLoginPassword) {
      
        if (!AppRegex.isPasswordValid(event.value) ||
            !AppRegex.isEmailValid(userLoginEmailAddress.text)) {
        
          emit(const LoginState.buttonLoginVaildation(false));
        } 
        else {
          emit(const LoginState.buttonLoginVaildation(true));
        }

        //  else
        if (!AppRegex.isPasswordValid(event.value)) {
          emit(const LoginState.userLoginPassword(
             AppStrings.pleaseEnterValidPassword));
        }
      }

      if (event is UserShowLoginPassword) {
        showPass = !showPass;

        emit(
          LoginState.showUserPassword(showPass),
        );
      }

    });
  }
}
