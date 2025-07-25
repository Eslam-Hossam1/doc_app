import 'package:doc_app/core/api/api_result.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/models/login_response.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponse>> login(
      {required LoginRequestBody loginRequestBody});
}
