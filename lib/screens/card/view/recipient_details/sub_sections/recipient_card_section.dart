import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipientCardSection extends StatelessWidget {
  final String recipientName;
  final String recipientImage;

  const RecipientCardSection({
    super.key,
    required this.recipientName,
    required this.recipientImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle("Send To"),
          const SizedBox(height: 12),
          _buildRecipientCard(),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
    );
  }

  Widget _buildRecipientCard() {
    return Container(
      height: 78,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1B1B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          _buildRecipientImage(),
          const SizedBox(width: 20),
          _buildRecipientDetails(),
          const Spacer(),
          _buildDownArrow(),
        ],
      ),
    );
  }

  Widget _buildRecipientImage() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(recipientImage),
        ),
      ),
    );
  }

  Widget _buildRecipientDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          recipientName,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "1245 577 785 943",
          style: TextStyle(
            fontSize: 12,
            color: const Color(0xFFFFFFFF).withOpacity(0.6),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildDownArrow() {
    return SvgPicture.asset(
      "assets/icons/others/down.svg",
      width: 24,
      height: 24,
    );
  }
}