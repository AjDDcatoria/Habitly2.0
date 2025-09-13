import 'package:firebase_flutter/src/routes/app_router.dart';
import 'package:firebase_flutter/src/themes/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
