import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/features/login/presentation/views/login_view.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static GoRoute login = GoRoute(
    path: RoutePaths.login,
    builder: (context, state) => const LoginView(),
  );

  static List<GoRoute> routes = [
    login,
  ];
}
