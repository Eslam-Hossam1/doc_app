import 'package:doc_app/core/api/api_result.dart';
import 'package:doc_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:doc_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_app/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/sign_up_request_body.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());
    final result = await _signupRepo.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    switch (result) {
      case ApiSuccess<SignupResponse>():
        emit(SignupState.signupSuccess(result));
        break;
      case ApiFailure<SignupResponse>():
        emit(SignupState.signupError(
            error: result.errorHandler.apiErrorModel.message ?? ''));
        break;
    }
  }
}
