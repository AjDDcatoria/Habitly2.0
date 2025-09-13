import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_flutter/src/constants/route_names.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Page"),
            ElevatedButton(
                onPressed: () => context.go(RouteNames.signup),
                child: Text("Go Signup Page")
            ),
          ],
        ),
      ),
    );
  }
}
