import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/features/home/ui/home_view.dart';
import 'package:doc_app/features/login/presentation/views/login_view.dart';
import 'package:go_router/go_router.dart';

class HomeRoute {
  static GoRoute home = GoRoute(
    path: RoutePaths.home,
    builder: (context, state) => const HomeView(),
  );

  static List<GoRoute> routes = [
    home,
  ];
}
