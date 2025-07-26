import 'package:doc_app/core/di/service_locator.dart';
import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/features/login/data/repos/login_repo_impl.dart';
import 'package:doc_app/features/login/presentation/manager/cubit/login_cubit.dart';
import 'package:doc_app/features/login/presentation/views/login_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static GoRoute login = GoRoute(
    path: RoutePaths.login,
    builder: (context, state) => BlocProvider(
      create: (context) => LoginCubit(
        loginRepo: getIt<LoginRepoImpl>(),
      ),
      child: const LoginView(),
    ),
  );

  static List<GoRoute> routes = [
    login,
  ];
}
