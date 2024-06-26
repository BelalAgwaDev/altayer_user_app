part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  const factory ForgetPasswordState.loading() = ForgetPasswordLoadingData;
  const factory ForgetPasswordState.error({required int statesCode,required String errorMessage}) = ForgetPasswordButtonErrorData;
  const factory ForgetPasswordState.suceess(ForgetPasswordResponse data) = ForgetPasswordButtonSuccessData;
  const factory ForgetPasswordState.userForgetEmailAddress(String value ) = UserForgetEmailAddress;
  const factory ForgetPasswordState.userForgetButtonValidator(bool value) = ContinueForgetButtonValidator;



  const factory ForgetPasswordState.verifyCodeLoading() = VerifyCodeLoadingData;
  const factory ForgetPasswordState.verifyCodeError({required int statesCode,required String errorMessage}) = VerifyCodeButtonErrorData;
  const factory ForgetPasswordState.verifyCodeSuceess(VerifyCodeResponse data) = VerifyCodeButtonSuccessData;
  const factory ForgetPasswordState.otpVerifyCode(String? value) = OtpVerifyCode;
  const factory ForgetPasswordState.verifyButtonValidator(bool value) = VerifyButtonValidator;


  const factory ForgetPasswordState.newPasswordLoading() = NewPasswordLoadingData;
  const factory ForgetPasswordState.newPasswordError({required int statesCode,required String errorMessage}) = NewPasswordButtonErrorData;
  const factory ForgetPasswordState.newPasswordSuceess(NewPasswordResponse data) = NewPasswordButtonSuccessData;
  const factory ForgetPasswordState.userNewPassword(String value) = UserNewPassword;
  const factory ForgetPasswordState.userConfirmNewPassword(String value) = UserConfirmNewPassword;
  const factory ForgetPasswordState.showNewPassword(bool value) = ShowNewPassword;
  const factory ForgetPasswordState.showConfirmNewPassword(bool value) = ShowConfirmNewPassword;
  const factory ForgetPasswordState.createNewPasswordValidator(bool value) = CreateNewPasswordValidator;
}
