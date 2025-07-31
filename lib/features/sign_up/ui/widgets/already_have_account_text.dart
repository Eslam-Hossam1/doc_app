import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: AppTextStyles.regular14.copyWith(color:AppColors.grey100 ),
          ),
          TextSpan(
            text: ' Login',
            style: AppTextStyles.semibold14.copyWith(color: AppColors.primary100),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.go(RoutePaths.login);
              },
          ),
        ],
      ),
    );
  }
}