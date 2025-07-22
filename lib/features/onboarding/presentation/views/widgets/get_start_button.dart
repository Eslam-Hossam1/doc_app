import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/utils/app_text_styles.dart';
import 'package:doc_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
      child: CustomTextButton(
        backgroundColor: AppColors.primary100,
        child: Text(
          'Get Started',
          style: AppTextStyles.semibold16.copyWith(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          //todo: going to signup or login view
        },
      ),
    );
  }
}
