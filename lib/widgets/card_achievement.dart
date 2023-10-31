import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

class CardAchievement extends StatelessWidget {
  final String titleAchievement;
  final String icon;
  final String time;
  const CardAchievement({
    super.key,
    required this.titleAchievement,
    required this.icon,
    required this.time,
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
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: whiteColor,
              border: Border.all(color: const Color(0xffEAECF0), width: 1),
            ),
            child: Image.asset('assets/$icon'),
          ),
          const SizedBox(width: 12),
          RichText(
            text: TextSpan(
              text: titleAchievement,
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                    text: '\n$time',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: light)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
