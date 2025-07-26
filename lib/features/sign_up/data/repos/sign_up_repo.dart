import 'package:doc_app/core/api/api_result.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_response.dart';

abstract interface class SignUpRepo {
  Future<ApiResult<SignupResponse>> signUp(SignupRequestBody signupRequestBody);
}
