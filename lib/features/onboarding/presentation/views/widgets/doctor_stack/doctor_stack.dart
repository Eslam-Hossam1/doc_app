import 'package:doc_app/core/utils/assets.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doctor_stack/doctor_background_logo.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doctor_stack/fade_effect_container.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doctor_stack/onboarding_text_section.dart';
import 'package:flutter/material.dart';

class DoctorStack extends StatelessWidget {
  const DoctorStack({super.key});

  @override
  Widget build(BuildContext context) {
    final double stackHeight = MediaQuery.sizeOf(context).height * .5;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: stackHeight,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: -150,
              top: 0,
              child: DoctorBackgroundLogo(),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: -150,
              top: 0,
              child: Image.asset(
                Assets.imagesPngsDoctor,
              ),
            ),
            Positioned(
              bottom: -150,
              left: 0,
              right: 0,
              top: stackHeight / 2,
              child: FadeEffectContainer(),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: -150,
              child: OnboardingTextSection(),
            ),
          ],
        ),
      ),
    );
  }
}
