import 'package:banking_app/application/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/card.png"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(16),
        color: AppColors.cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_buildCardHeader(), _buildCardFooter()],
        ),
      ),
    );
  }

  Widget _buildCardHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildBalanceInfo(), _buildBankName()],
    );
  }

  Widget _buildCardFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildCardNumberInfo(), _buildVisaLogo()],
    );
  }

  Widget _buildBalanceInfo() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Current Balance",
          style: TextStyle(
            color: Color(0xFF6E6E6D),
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "\$1359.00",
          style: TextStyle(
            color: Color(0xFF0D0D0C),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildBankName() {
    return const Text(
      "HBank",
      style: TextStyle(
        color: Color(0xFF0D0D0C),
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildCardNumberInfo() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Credit card",
          style: TextStyle(
            color: Color(0xFF6E6E6D),
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "0347 582 425 245",
          style: TextStyle(
            color: Color(0xFF0D0D0C),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildVisaLogo() {
    return Image.asset("assets/images/visa.png", width: 40, height: 40);
  }
}
