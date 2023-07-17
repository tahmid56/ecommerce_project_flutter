import 'package:ecommerce_project/features/auth/views/signin_screen.dart';
import 'package:ecommerce_project/features/auth/views/signup_screen.dart';
import 'package:ecommerce_project/features/home/views/home_screen.dart';
import 'package:ecommerce_project/route/go_router_notifier.dart';
import 'package:ecommerce_project/route/named_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final goRouterNotifier = ref.read(goRouteNotifierProvider);
  return GoRouter(
      initialLocation: '/home',
      refreshListenable: goRouterNotifier,
      redirect: (context, state) {
        final isLoggedIn = goRouterNotifier.isLoggedIn;
        if (!isLoggedIn) {
          return '/signin';
        }
        return null;
      },
      routes: [
        GoRoute(
          name: NamedRoutes.signup,
          path: '/signup',
          builder: (context, state) => SignUpView(
            key: state.pageKey,
          ),
        ),
        GoRoute(
            name: NamedRoutes.signin,
            path: '/signin',
            builder: (context, state) => SignInView(
                  key: state.pageKey,
                )),
        GoRoute(
          name: NamedRoutes.home,
          path: '/home',
          builder: (context, state) => HomeView(
            key: state.pageKey,
          ),
        ),
      ]);
});
