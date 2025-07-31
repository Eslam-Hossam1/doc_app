import 'package:bloc/bloc.dart';
import 'package:doc_app/core/api/api_result.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/models/login_response.dart';
import 'package:doc_app/features/login/data/repos/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit({required LoginRepo loginRepo})
      : _loginRepo = loginRepo,
        super(LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(LoginState.loading());
    LoginRequestBody loginRequestBody = LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    );
    ApiResult<LoginResponse> result = await _loginRepo.login(
      loginRequestBody: loginRequestBody,
    );
    switch (result) {
      case ApiSuccess<LoginResponse>():
        emit(LoginState.success(result));
        break;
      case ApiFailure<LoginResponse>():
        emit(LoginState.failure(
            error: result.errorHandler.apiErrorModel.message ?? ''));
        break;
    }
  }
}
