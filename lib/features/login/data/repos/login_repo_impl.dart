import 'package:doc_app/core/api/api_error_handler.dart';
import 'package:doc_app/core/api/api_result.dart';
import 'package:doc_app/core/api/api_service.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/models/login_response.dart';
import 'package:doc_app/features/login/data/repos/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final ApiService _apiService;

  LoginRepoImpl({required ApiService apiService}) : _apiService = apiService;
  @override
  Future<ApiResult<LoginResponse>> login(
      {required LoginRequestBody loginRequestBody}) async {
    try {
      LoginResponse loginResponse = await _apiService.login(loginRequestBody);
      return ApiResult.success(loginResponse);
    } catch (e) {
      return ApiResult.failure(
        ErrorHandler.handle(
          e,
        ),
      );
    }
  }
}
