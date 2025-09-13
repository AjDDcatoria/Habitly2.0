import 'package:firebase_flutter/src/constants/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),
            ElevatedButton(
                onPressed: () => context.go(RouteNames.login),
                child: Text("Go Login Page")
            ),
          ],
        ),
      ),
    );
  }
}
