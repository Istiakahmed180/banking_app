import 'package:banking_app/common/controller/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            final controller = Get.find<BottomNavigationController>();
            controller.popPage();
          },
          child: Container(
            padding: const EdgeInsets.all(4),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: const Color(0xFF1B1B1B),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset("assets/icons/others/back.svg"),
          ),
        ),
        const Spacer(),
        // Screen Title
        Text(
          "Send Money",
          style: TextStyle(
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const Spacer(),
      ],
    );
    ;
  }
}
