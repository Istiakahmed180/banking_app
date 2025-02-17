import 'package:banking_app/screens/card/view/sub_sections/card_section.dart';
import 'package:banking_app/screens/card/view/sub_sections/recent_activity_section.dart';
import 'package:banking_app/screens/card/view/sub_sections/recipient_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              CardSection(),
              const SizedBox(height: 24),
              RecipientSection(),
              const SizedBox(height: 24),
              RecentActivitySection(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFB6EF11),
        onPressed: () {},
        child: SvgPicture.asset("assets/icons/others/plus.svg"),
      ),
    );
  }
}
