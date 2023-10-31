import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

class CardRadioButton extends StatelessWidget {
  final String value;
  final String icon;
  const CardRadioButton({super.key, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 160,
        width: 100,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: whiteColor,
          border: Border.all(color: const Color(0xffEAECF0), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/$icon',
              width: 39,
            ),
            const SizedBox(height: 24),
            Text(
              value,
              style: primaryTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
