import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/theming/app_text_styles.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doctor_stack/doctor_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSection extends StatelessWidget {
  const DoctorSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate(
      [
        DoctorStack(),
        SizedBox(
          height: 18.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            'Manage and schedule all of your medical appointments easily\nwith Docdoc to get a new experience.',
            style: AppTextStyles.regular10.copyWith(color: AppColors.grey70),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ));
  }
}
