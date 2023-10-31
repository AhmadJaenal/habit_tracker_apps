import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_radio_button_card.dart';

class ChooseGender extends StatelessWidget {
  const ChooseGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          padding: EdgeInsets.fromLTRB(
              defaultMargin, defaultMargin * 2, defaultMargin, defaultMargin),
          decoration: BoxDecoration(
            color: whiteColor,
            border: const Border(
              bottom: BorderSide(
                color: Color(0xffEAECF0),
              ),
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: whiteColor,
                    border:
                        Border.all(color: const Color(0xffEAECF0), width: 1),
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: primaryTextColor, size: 16, weight: 2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Choose Gender',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 24,
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Choose your gender',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardRadioButton(
                  icon: 'icon_male.png',
                  value: 'Male',
                ),
                SizedBox(width: 24),
                CardRadioButton(
                  icon: 'icon_female.png',
                  value: 'Female',
                ),
              ],
            ),
            const Spacer(),
            PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, '/choose-habits');
              },
              titleButton: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
