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
        child: Stack(
          children: [
            SizedBox(
              height: 80,
              child: BottomNavigationBar(
                backgroundColor: AppColors.bottomNav,
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.selectedIndex.value,
                onTap: controller.onTapItem,
                selectedLabelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 2,
                child: Stack(
                  children: List.generate(4, (index) {
                    double itemWidth = MediaQuery.of(context).size.width / 4;
                    double indicatorWidth = 33;
                    double startPosition =
                        (index * itemWidth) +
                        ((itemWidth - indicatorWidth) / 2);

                    return Positioned(
                      left: startPosition,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        height: 2,
                        width: indicatorWidth,
                        color:
                            controller.selectedIndex.value == index
                                ? Color(0xFFB6EF11)
                                : Colors.transparent,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
