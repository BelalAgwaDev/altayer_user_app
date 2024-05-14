import 'package:altayer/core/network/api/app_api.dart';
import 'package:altayer/core/network/apiResult/api_reuslt.dart';
import 'package:altayer/core/network/error_handler/api_error_handler.dart';
import 'package:altayer/core/network/network_connectivity/connectivity_controller.dart';
import 'package:altayer/feature/verifyCode/data/model/bodyRequest/verifiy_code_body_request.dart';
import 'package:altayer/feature/verifyCode/data/model/verifiyCodeResponse/verifiy_code_response.dart';

class VerifyCodeRepository {
  VerifyCodeRepository(this._apiService, this._networkInfo);
  final AppServiceClient _apiService;
  late final NetworkInfo _networkInfo;

  Future<ApiResult<VerifyCodeResponse>> verifyCode(
    VerifyCodeRequestBody verifyCodeRequestBody,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _apiService.verifyCode(verifyCodeRequestBody);
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
