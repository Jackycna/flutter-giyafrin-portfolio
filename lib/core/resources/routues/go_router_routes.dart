import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/features/main/presentation/ui/main_page.dart';

class GoRouterRoutes {
  static final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static final GoRouter routes = GoRouter(
    initialLocation: '/',
    routes: [GoRoute(path: '/', builder: (context, state) => MainPage())],
  );
}
