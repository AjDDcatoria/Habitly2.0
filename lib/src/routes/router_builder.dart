import 'package:firebase_flutter/src/features/presentation/pages/home_page.dart';
import 'package:firebase_flutter/src/features/presentation/pages/login_page.dart';
import 'package:firebase_flutter/src/features/presentation/pages/signup_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class AppRouteBuilder {
  static Widget loginPage(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }

  static Widget signupPage(BuildContext context, GoRouterState state) {
    return const SignupPage();
  }

  static Widget homePage(BuildContext context, GoRouterState state) {
    return const HomePage();
  }

}