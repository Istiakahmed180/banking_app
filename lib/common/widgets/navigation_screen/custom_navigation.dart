import 'package:banking_app/application/constants/app_colors.dart';
import 'package:banking_app/common/controller/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomNavigationItem extends StatefulWidget {
  const CustomNavigationItem({super.key});

  @override
  State<CustomNavigationItem> createState() => _CustomNavigationItemState();
}

class _CustomNavigationItemState extends State<CustomNavigationItem> {
  final BottomNavigationController controller = Get.put(
    BottomNavigationController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.bottomNav,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onTapItem,
          selectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8),
                child: SvgPicture.asset(
                  "assets/icons/nav_icons/home_nav.svg",
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8),
                child: SvgPicture.asset(
                  "assets/icons/nav_icons/card_nav.svg",
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8),
                child: SvgPicture.asset(
                  "assets/icons/nav_icons/swap_nav.svg",
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Transaction',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8),
                child: SvgPicture.asset(
                  "assets/icons/nav_icons/user_nav.svg",
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
