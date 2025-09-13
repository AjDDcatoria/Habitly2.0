import 'package:firebase_flutter/src/themes/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter"),
        ),
        body: Center(
          child: Text("Body"),
        ),
      ),
    );
  }
}
