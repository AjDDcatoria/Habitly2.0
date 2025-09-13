import 'package:firebase_flutter/src/constants/colors.dart';
import 'package:flutter/material.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  static final lightAppBar = AppBarTheme(
    elevation: 0,
    backgroundColor: AppColors.light,
    scrolledUnderElevation: 0,
  );
}