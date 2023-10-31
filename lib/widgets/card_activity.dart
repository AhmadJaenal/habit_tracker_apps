import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class CardActivity extends StatelessWidget {
  final String titleActivity;
  final String icon;
  final String date;
  const CardActivity({
    super.key,
    required this.titleActivity,
    required this.icon,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: whiteColor,
        border: Border.all(color: const Color(0xffEAECF0), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: titleActivity,
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                    text: '\n$date',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: light)),
              ],
            ),
          ),
          MiniButton(icon: icon, onTap: () {})
        ],
      ),
    );
  }
}
