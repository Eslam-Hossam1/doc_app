import 'package:doc_app/features/onboarding/presentation/views/widgets/doc_logo_and_name.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doctor_section.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doctor_stack/doctor_stack.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/get_start_button.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 56,
          ),
        ),
        DocLogoAndName(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 56,
          ),
        ),
        DoctorSection(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: GetStartButton(),
          ),
        ),
      ],
    );
  }
}
