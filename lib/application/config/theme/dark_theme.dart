import 'package:banking_app/application/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  ThemeData darkTheme(context)=> ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,
  );
}