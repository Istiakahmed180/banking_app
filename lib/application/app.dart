import 'package:banking_app/application/config/theme/dark_theme.dart';
import 'package:banking_app/common/widgets/navigation_screen/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationScreen(),
      themeMode: ThemeMode.dark,
      theme: DarkTheme().darkTheme(context),
    );
  }
}
