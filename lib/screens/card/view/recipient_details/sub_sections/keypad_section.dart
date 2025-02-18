import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KeypadSection extends StatelessWidget {
  const KeypadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildKeypadRow("1", "", "2", "ABC", "3", "DEF"),
        const SizedBox(height: 16),
        _buildKeypadRow("4", "GHI", "5", "JKL", "6", "MNO"),
        const SizedBox(height: 16),
        _buildKeypadRow("7", "PQRS", "8", "TUV", "9", "WXYZ"),
        const SizedBox(height: 16),
        Row(
          children: [
            const SizedBox(width: 130, height: 50),
            const Spacer(),
            _buildKeypadButton("0", ""),
            const Spacer(),
            SizedBox(
              width: 130,
              height: 50,
              child: Center(
                child: SvgPicture.asset("assets/icons/others/close.svg"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildKeypadRow(
    String num1,
    String label1,
    String num2,
    String label2,
    String num3,
    String label3,
  ) {
    return Row(
      children: [
        _buildKeypadButton(num1, label1),
        const Spacer(),
        _buildKeypadButton(num2, label2),
        const Spacer(),
        _buildKeypadButton(num3, label3),
      ],
    );
  }

  Widget _buildKeypadButton(String number, String label) {
    return SizedBox(
      width: 130,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),
          ),
          if (label.isNotEmpty)
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: "Inter",
                fontWeight: FontWeight.w600,
                fontSize: 10,
              ),
            ),
        ],
      ),
    );
  }
}
