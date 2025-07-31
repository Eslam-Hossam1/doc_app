
import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class OnboardingRoute {
  static GoRoute onboarding = GoRoute(
    path: RoutePaths.onboarding,
    builder: (context, state) => const OnBoardingView(),
  );

  static List<GoRoute> routes = [
    onboarding,
  ];
}
