import 'package:ecommerce_project/features/auth/views/signup_screen.dart';
import 'package:ecommerce_project/route/go_router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final goRoute = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routeInformationParser: goRoute.routeInformationParser,
      routeInformationProvider: goRoute.routeInformationProvider,
      routerDelegate: goRoute.routerDelegate,
    );
  }
}
