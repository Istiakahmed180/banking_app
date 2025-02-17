import 'package:banking_app/application/constants/app_colors.dart';
import 'package:banking_app/common/controller/bottom_navigation_controller.dart';
import 'package:banking_app/common/widgets/navigation_screen/custom_navigation.dart';
import 'package:banking_app/screens/card/view/card_screen.dart';
import 'package:banking_app/screens/home/view/home_screen.dart';
import 'package:banking_app/screens/profile/view/profile_screen.dart';
import 'package:banking_app/screens/transaction/view/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final BottomNavigationController controller = Get.put(
    BottomNavigationController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 1:
            return CardScreen();
          case 2:
            return TransactionScreen();
          case 3:
            return ProfileScreen();
          default:
            return HomeScreen();
        }
      }),
      bottomNavigationBar: CustomNavigationItem(),
    );
  }
}
