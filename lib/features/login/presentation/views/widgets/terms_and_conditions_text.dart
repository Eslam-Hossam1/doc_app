import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';


class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppTextStyles.regular14.copyWith(color: AppColors.grey60),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: AppTextStyles.medium14.copyWith(color: AppColors.grey100),
          ),
          TextSpan(
            text: ' and',
            style: AppTextStyles.regular14.copyWith(color: AppColors.grey60,height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: AppTextStyles.medium14.copyWith(color: AppColors.grey100),
          ),
        ],
      ),
    );
  }
}
