import 'package:flutter/material.dart';
import 'package:firebase_flutter/src/constants/colors.dart';
import 'package:firebase_flutter/src/themes/custom/app_bar_theme.dart';
import 'package:firebase_flutter/src/themes/custom/elevated_button_theme.dart';
import 'package:firebase_flutter/src/themes/custom/outlined_button_theme.dart';
import 'package:firebase_flutter/src/themes/custom/text_field_theme.dart';
import 'package:firebase_flutter/src/themes/custom/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.light,
    elevatedButtonTheme: AppElevatedButtonTheme.primaryButton,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButton,
    appBarTheme: AppAppBarTheme.lightAppBar,
    textTheme: AppTextTheme.lightTextTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecoration,
    extensions: [
      SecondaryButtonTheme(secondary: AppElevatedButtonTheme.secondaryButton),
    ],
  );
}

class SecondaryButtonTheme extends ThemeExtension<SecondaryButtonTheme> {
  final ElevatedButtonThemeData secondary;

  const SecondaryButtonTheme({required this.secondary});

  @override
  ThemeExtension<SecondaryButtonTheme> copyWith({
    ElevatedButtonThemeData? secondary,
  }) {
    return SecondaryButtonTheme(secondary: secondary ?? this.secondary);
  }

  @override
  ThemeExtension<SecondaryButtonTheme> lerp(
      ThemeExtension<SecondaryButtonTheme>? other,
      double t,
      ) {
    if (other is! SecondaryButtonTheme) return this;
    return SecondaryButtonTheme(
      secondary: ElevatedButtonThemeData.lerp(secondary, other.secondary, t)!,
    );
  }
}