import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/data/data_habits.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/card_habit.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class ChallengeDetail extends StatelessWidget {
  const ChallengeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientColor, primaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [.1, .9],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              defaultMargin, paddingTop * 1.5, defaultMargin, defaultMargin),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MiniButton(
                    icon: 'icon_back.png',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  MiniButton(
                    icon: 'icon_add.png',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Image.asset(
                'assets/icon_running.png',
                width: 60,
              ),
              const SizedBox(height: 8),
              Text(
                'Best Runners!',
                style: whiteTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'May 28 to 4 June',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
              ),
              const SizedBox(height: 24),
              Image.asset(
                'assets/image_participant.png',
                width: 140,
              ),
              const SizedBox(height: 24),
              Text(
                'Every challenge you face is an opportunity to grow, develop, and become stronger. Never hesitate to face challenges, because in them there is the key to success waiting for you to find.',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              CustomButton(titleButton: 'Join the challenge', onPressed: () {}),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tasks',
                  style: whiteTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: habits.length,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return CardHabit(
                      icon: habits[index][0],
                      titleHabit: habits[index][1],
                      valueTarget: habits[index][2],
                      percentage: habits[index][3],
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
