import 'package:altayer/core/network/api_constant/api_constant.dart';
import 'package:altayer/feature/forgetPassword/data/model/bodyRequest/forget_password_body_request.dart';
import 'package:altayer/feature/forgetPassword/data/model/loginResponse/forget_password_response.dart';
import 'package:altayer/feature/login/data/model/bodyRequest/login_body_request.dart';
import 'package:altayer/feature/login/data/model/loginResponse/login_response.dart';
import 'package:altayer/feature/newPassword/data/model/bodyRequest/new_password_body_request.dart';
import 'package:altayer/feature/newPassword/data/model/newPasswordResponse/new_password_response.dart';
import 'package:altayer/feature/signUp/data/model/bodyRequest/sign_up_body_request.dart';
import 'package:altayer/feature/signUp/data/model/signUpResponse/sign_up_response.dart';
import 'package:altayer/feature/verifyCode/data/model/bodyRequest/verifiy_code_body_request.dart';
import 'package:altayer/feature/verifyCode/data/model/verifiyCodeResponse/verifiy_code_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @POST(ApiConstants.forgetPassword)
  Future<ForgetPasswordResponse> forgetPassword(
    @Body() ForgetPasswordRequestBody forgetPasswordRequestBody,
  );

  @POST(ApiConstants.verifyCode)
  Future<VerifyCodeResponse> verifyCode(
    @Body() VerifyCodeRequestBody verifyCodeRequestBody,
  );

  @PUT(ApiConstants.resetPassword)
  Future<NewPasswordResponse> newPassword(
    @Body() NewPasswordRequestBody newPasswordRequestBody,
  );
  // @POST(ApiConstants.getFound)
  // @MultiPart()
  // Future<MakeUnReportResponse> makeUnReport(
  //   @Part() String address,
  //   @Part() String description,
  //   @Part() File image,
  // );

  // @POST(ApiConstants.getMissing)
  // @MultiPart()
  // Future<MakeAReportResopnse> makeAReport(
  //   @Part() String name,
  //   @Part() String age,
  //   @Part() String address,
  //   @Part() String clothesLastSeenWearing,
  //   @Part() String describtion,
  //   @Part() File image,
  // );

  // @POST(ApiConstants.getMissing)
  // @MultiPart()
  // Future<MakeAReportObjectResopnse> makeAReportObjet(
  //   @Part() String address,
  //   @Part() String describtion,
  //   @Part() File image,
  // );

  // @PUT(ApiConstants.updateMyImage)
  // @MultiPart()
  // Future<UserDataModelResponse> updateMyImage(
  //   @Part() File image,
  // );

  // @PUT(ApiConstants.updateMyPassword)
  // Future<UserDataModelResponse> updateMyPassword(
  //   @Body() UpdatePasswordRequestBody updatePasswordRequestBody,
  // );

  // @PUT(ApiConstants.updateMyData)
  // Future<UserDataModelResponse> updateMyData(
  //   @Body() UpdateMyDataRequestBody updateMyDataRequestBody,
  // );

  // @GET(ApiConstants.getMissing)
  // Future<GetMissingResopnse> getMissing(
  //   @Queries() GetMissingReportQueries getMissingReportQueries,
  // );

  // @GET(ApiConstants.getFound)
  // Future<GetFoundResopnse> getFound(
  //   @Queries() GetFoundReportQueries getFoundReportParam,
  // );

  // @GET(ApiConstants.getNotification)
  // Future<NotificationResponse> getNotification(
  //   @Queries() GetNotificationQueries getNotificationQueries,
  // );
}
