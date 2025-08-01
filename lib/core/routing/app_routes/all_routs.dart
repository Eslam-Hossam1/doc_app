import 'package:doc_app/core/routing/app_routes/auth_routs.dart';
import 'package:doc_app/core/routing/app_routes/home_route.dart';
import 'package:doc_app/core/routing/app_routes/onboarding_route.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static List<RouteBase> routes = [
    ...OnboardingRoute.routes,
    ...AuthRoutes.routes,
    ...HomeRoute.routes,
  ];
}
