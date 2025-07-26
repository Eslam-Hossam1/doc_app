import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../logic/sign_up_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        switch (state) {
          case SignupLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary100,
                ),
              ),
            );

          case SignupSuccess():
            context.pop();
            showSuccessDialog(context);

          case SignupError():
            setupErrorState(context, state.error);
          default:
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Continue'),
              style: TextButton.styleFrom(
                textStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.blue,
                surfaceTintColor: Colors.grey,
              ),
              onPressed: () {
                context.pushNamed(RoutePaths.login);
              },
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.medium14.copyWith(
            color: AppColors.grey100,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.semibold14.copyWith(
                color: AppColors.primary100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
