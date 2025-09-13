import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_flutter/src/constants/route_names.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Signup Page"),
            ElevatedButton(
                onPressed: () => context.go(RouteNames.home),
                child: Text("Go Home Page")
            ),
          ],
        ),
      ),
    );
  }
}
