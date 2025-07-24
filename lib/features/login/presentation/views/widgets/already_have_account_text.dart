import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';


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
            text: ' Sign Up',
            style: AppTextStyles.semibold14.copyWith(color: AppColors.primary100),
          ),
        ],
      ),
    );
  }
}
