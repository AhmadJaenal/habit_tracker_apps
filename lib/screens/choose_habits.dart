import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_radio_button_card.dart';

class ChooseHabits extends StatelessWidget {
  ChooseHabits({super.key});

  List<List<String>> habits = [
    ['icon_water.png', 'Drink Water'],
    ['icon_run.png', 'Run'],
    ['icon_book.png', 'Read Books'],
    ['icon_meditate.png', 'Meditate'],
    ['icon_study.png', 'Study'],
    ['icon_jurnal.png', 'Journal'],
    ['icon_plant.png', 'Water Plant'],
    ['icon_sleep.png', 'Sleep'],
  ];

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
                'Create Account',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 24,
                ),
              ),
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
              'Choose your firts habits',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'You manny add more habits later',
              style: secondaryTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  String icon = habits[index][0];
                  String value = habits[index][1];
                  return CardRadioButton(value: value, icon: icon);
                },
              ),
            ),
            PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home-page');
              },
              titleButton: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
