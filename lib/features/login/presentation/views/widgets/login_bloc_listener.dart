import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/login/presentation/manager/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        switch (state) {
          case Loading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary100,
                ),
              ),
            );
            break;

          case Success():
            context.pop();
            context.pushNamed(RoutePaths.home);
            break;
          case Failure():
            setupErrorState(context, state.error);
          case LoginState():
            //if anything else (login initial)  do nothing 
        }
      },
      child: const SizedBox.shrink(),
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
          style: AppTextStyles.medium14.copyWith(color: AppColors.grey100),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.semibold14.copyWith(color: AppColors.primary100),
            ),
          ),
        ],
      ),
    );
  }
}
