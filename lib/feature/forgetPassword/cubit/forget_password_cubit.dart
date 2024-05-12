import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_state.dart';
part 'forget_password_cubit.freezed.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(const ForgetPasswordState.initial());
  final TextEditingController userForgetPasswordEmailAddress =
      TextEditingController();

  final forgetPasswordFormKey = GlobalKey<FormState>();
}
