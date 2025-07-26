import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/core/widgets/custom_text_button.dart';
import 'package:doc_app/features/login/presentation/manager/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      child: Text(
        'Login',
        style: AppTextStyles.semibold16.copyWith(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () {
        validateThenDoLogin(context);
      },
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}
