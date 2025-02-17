import 'package:flutter/material.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Enter your amount",
          style: TextStyle(
            color: Color(0xFFFFFFFF).withOpacity(0.6),
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "\$1250.00",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
            fontSize: 48,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            backgroundColor: Color(0xFFB6EF11),
            minimumSize: const Size(double.infinity, 48),
          ),
          child: Text(
            "Send",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF000000),
            ),
          ),
        ),
      ],
    );
  }
}
