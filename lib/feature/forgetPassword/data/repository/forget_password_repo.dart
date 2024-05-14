import 'package:altayer/core/network/api/app_api.dart';
import 'package:altayer/core/network/apiResult/api_reuslt.dart';
import 'package:altayer/core/network/error_handler/api_error_handler.dart';
import 'package:altayer/core/network/network_connectivity/connectivity_controller.dart';
import 'package:altayer/feature/forgetPassword/data/model/bodyRequest/forget_password_body_request.dart';
import 'package:altayer/feature/forgetPassword/data/model/loginResponse/forget_password_response.dart';

class ForgetPasswordRepository {
  ForgetPasswordRepository(this._apiService, this._networkInfo);
  final AppServiceClient _apiService;
  late final NetworkInfo _networkInfo;

  Future<ApiResult<ForgetPasswordResponse>> forgetPassword(
    ForgetPasswordRequestBody forgetPasswordRequestBody,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _apiService.forgetPassword(forgetPasswordRequestBody);
        return ApiResult.success(response);
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error).apiErrorModel);
      }
    } else {
      //return  internet connection error
      return ApiResult.failure(DataSource.noInternetConnection.getFailure());
    }
  }
}
