import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

class CardLeaderboard extends StatelessWidget {
  final String point;
  final String name;
  final String avatar;
  final String index;
  const CardLeaderboard({
    super.key,
    required this.point,
    required this.name,
    required this.avatar,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: whiteColor,
        border: Border.all(color: const Color(0xffEAECF0), width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: whiteColor,
              border: Border.all(color: greyColor, width: 2),
            ),
            child: Center(
              child: Text(index, style: primaryTextStyle),
            ),
          ),
          const SizedBox(width: 12),
          RichText(
            text: TextSpan(
              text: name,
              style: primaryTextStyle.copyWith(fontWeight: bold, fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '\n$point Points',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset('assets/$avatar', width: 32),
        ],
      ),
    );
  }
}
