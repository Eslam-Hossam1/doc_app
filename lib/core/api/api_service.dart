import 'package:dio/dio.dart';
import 'package:doc_app/core/api/endpoints.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/models/login_response.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_response.dart';

import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: Endpoints.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(Endpoints.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @POST(Endpoints.signUp)
  Future<SignupResponse> signUp(
    @Body() SignupRequestBody signUpRequestBody,
  );
}
