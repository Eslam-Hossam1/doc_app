import 'package:doc_app/core/routing/routes_paths.dart';
import 'package:doc_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static GoRoute login = GoRoute(
    path: RoutePaths.login,
    builder: (context, state) => const Scaffold(
      body: Center(child: Text('login placeholder')),
    ),
  );

  static List<GoRoute> routes = [
    login,
  ];
}
