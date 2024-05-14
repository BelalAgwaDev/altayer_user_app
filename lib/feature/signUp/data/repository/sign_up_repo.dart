import 'package:altayer/core/network/api/app_api.dart';
import 'package:altayer/core/network/apiResult/api_reuslt.dart';
import 'package:altayer/core/network/error_handler/api_error_handler.dart';
import 'package:altayer/core/network/network_connectivity/connectivity_controller.dart';
import 'package:altayer/feature/signUp/data/model/bodyRequest/sign_up_body_request.dart';
import 'package:altayer/feature/signUp/data/model/signUpResponse/sign_up_response.dart';

class RegisterRepository {
  RegisterRepository(this._apiService, this._networkInfo);
  final AppServiceClient _apiService;
  late final NetworkInfo _networkInfo;

  Future<ApiResult<RegisterResponse>> register(
    RegisterRequestBody registerRequestBody,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _apiService.register(registerRequestBody);
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
