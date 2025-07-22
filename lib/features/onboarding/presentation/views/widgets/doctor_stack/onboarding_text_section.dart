import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingTextSection extends StatelessWidget {
  const OnboardingTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Manage and schedule all of your medical appointments easily\nwith Docdoc to get a new experience.',
            style: AppTextStyles.regular10.copyWith(
              color: AppColors.grey70
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
