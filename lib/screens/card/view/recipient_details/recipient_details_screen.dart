import 'package:banking_app/screens/card/view/recipient_details/sub_sections/balance_section.dart';
import 'package:banking_app/screens/card/view/recipient_details/sub_sections/header_section.dart';
import 'package:banking_app/screens/card/view/recipient_details/sub_sections/recipient_card_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipientDetailsScreen extends StatelessWidget {
  final String recipientName;
  final String recipientImage;

  const RecipientDetailsScreen({
    super.key,
    required this.recipientName,
    required this.recipientImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 60),
              HeaderSection(),
              SizedBox(height: 24),
              RecipientCardSection(
                recipientName: recipientName,
                recipientImage: recipientImage,
              ),
              SizedBox(height: 36),
              BalanceSection()
            ],
          ),
        ),
      ),
    );
  }
}
