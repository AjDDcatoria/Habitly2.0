import 'package:firebase_flutter/src/constants/route_names.dart';
import 'package:firebase_flutter/src/routes/router_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: RouteNames.signin, builder: AppRouteBuilder.signPage),
    GoRoute(path: RouteNames.signup, builder: AppRouteBuilder.signupPage),
    GoRoute(path: RouteNames.home, builder: AppRouteBuilder.homePage),
  ],
  redirect: (context, state) => null,
  errorBuilder:
      (context, state) =>
          const Scaffold(body: Center(child: Text('404 - Page not found'))),
);
