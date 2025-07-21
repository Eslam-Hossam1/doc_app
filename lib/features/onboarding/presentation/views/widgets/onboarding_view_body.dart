import 'package:doc_app/core/utils/assets.dart';
import 'package:doc_app/features/onboarding/presentation/views/widgets/doc_logo_and_name.dart';
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
      ],
    );
  }
}
