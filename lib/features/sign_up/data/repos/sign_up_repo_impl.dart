import 'package:doc_app/core/api/api_error_handler.dart';
import 'package:doc_app/core/api/api_result.dart';
import 'package:doc_app/core/api/api_service.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:doc_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SignupRepoImpl implements SignUpRepo {
  final ApiService _apiService;

  SignupRepoImpl({required ApiService apiService}) : _apiService = apiService;
  @override
  Future<ApiResult<SignupResponse>> signUp(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signUp(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
