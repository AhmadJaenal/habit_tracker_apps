import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class CardFriend extends StatelessWidget {
  final String name;
  final String point;
  final String avatar;
  const CardFriend({
    super.key,
    required this.name,
    required this.point,
    required this.avatar,
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
          Image.asset('assets/$avatar', width: 32),
          const SizedBox(width: 12),
          RichText(
            text: TextSpan(
              text: name,
              style:
                  primaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                    text: '\n$point Points',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: light)),
              ],
            ),
          ),
          const Spacer(),
          MiniButton(icon: 'icon_trash.png', onTap: () {})
        ],
      ),
    );
  }
}
