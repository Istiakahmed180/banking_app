import 'package:banking_app/common/controller/bottom_navigation_controller.dart';
import 'package:banking_app/common/widgets/navigation_screen/custom_navigation.dart';
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
    return WillPopScope(
      onWillPop: () async {
        return !controller.popPage();
      },
      child: Scaffold(
        body: GetBuilder<BottomNavigationController>(
          builder: (controller) {
            return Obx(() => controller.currentPage);
          },
        ),
        bottomNavigationBar: CustomNavigationItem(),
      ),
    );
  }
}
