import 'package:doc_app/core/theming/app_colors.dart';
import 'package:doc_app/core/utils/app_text_styles.dart';
import 'package:doc_app/core/utils/assets.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doctor_stack/doctor_background_logo.dart';
import 'package:flutter/material.dart';

class DoctorStack extends StatelessWidget {
  const DoctorStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: DoctorBackgroundLogo(),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
                stops: [.14, .38],
                colors: [
                  Colors.white,
                  Colors.white.withValues(alpha: 0),
                ],
              ),
            ),
            child: Image.asset(
              Assets.imagesPngsDoctor,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: AppTextStyles.bold32.copyWith(
              color: AppColors.primary100,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
