import 'dart:js';

import 'package:ecommerce_project/features/auth/views/signup_screen.dart';
import 'package:ecommerce_project/features/home/views/home_screen.dart';
import 'package:ecommerce_project/route/named_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/home', routes: [
    GoRoute(
      name: NamedRoutes.signup,
      path: '/signup',
      builder: (context, state) => SignUpView(key: state.pageKey),
    ),
    GoRoute(
      name: NamedRoutes.signup,
      path: '/home',
      builder: (context, state) => HomeView(
        key: state.pageKey,
      ),
    ),
  ]);
});
