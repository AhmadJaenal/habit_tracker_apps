import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:routiner_habit_tracker_app/data/data_habits.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Container(
          padding: EdgeInsets.only(
              top: paddingTop * 1.5, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: whiteColor,
            border: const Border(
              bottom: BorderSide(
                color: Color(0xffEAECF0),
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore',
                    style: primaryTextStyle.copyWith(
                        fontSize: 32, fontWeight: bold),
                  ),
                  MiniButton(icon: 'icon_search.png', onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suggested for You',
                  style: primaryTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  'View all',
                  style: customTextStyle.copyWith(
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(top: 4),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: popularHabits.length,
              itemBuilder: (context, index) {
                String emoji = popularHabits[index][0];
                String habit = popularHabits[index][1];
                String value = popularHabits[index][2];
                int color = int.parse(popularHabits[index][3]);
                return Padding(
                  padding: index == 0
                      ? EdgeInsets.only(left: defaultMargin, right: 12)
                      : index == popularHabits.length - 1
                          ? EdgeInsets.only(right: defaultMargin)
                          : const EdgeInsets.only(right: 12),
                  child: Container(
                    width: 128,
                    height: 102,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(color),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: whiteColor,
                          ),
                          child: Image.asset('assets/$emoji'),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          habit,
                          style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                              overflow: TextOverflow.ellipsis,
                              decoration: TextDecoration.none),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          value,
                          style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: light,
                              decoration: TextDecoration.none),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Habit Club',
                  style: primaryTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  'View all',
                  style: customTextStyle.copyWith(
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 110,
            margin: const EdgeInsets.only(top: 4),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: habitClub.length,
              itemBuilder: (context, index) {
                String emoji = habitClub[index][0];
                String habitName = habitClub[index][1];
                String numberOfMember = habitClub[index][2];
                return Padding(
                  padding: index == 0
                      ? EdgeInsets.only(left: defaultMargin, right: 12)
                      : index == habitClub.length - 1
                          ? EdgeInsets.only(right: defaultMargin)
                          : const EdgeInsets.only(right: 12),
                  child: Container(
                    width: 128,
                    height: 102,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border:
                          Border.all(color: const Color(0xffEAECF0), width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: const Color(0xffEAECF0), width: 1),
                          ),
                          child: Image.asset('assets/$emoji'),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          habitName,
                          style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                              overflow: TextOverflow.ellipsis,
                              decoration: TextDecoration.none),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          numberOfMember,
                          style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: light,
                              overflow: TextOverflow.ellipsis,
                              decoration: TextDecoration.none),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Challenge',
                  style: primaryTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  'View all',
                  style: customTextStyle.copyWith(
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            height: 128,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: challenge.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                String title = challenge[index][0];
                String time = challenge[index][1];
                double value = challenge[index][2];
                return Padding(
                  padding: index == 0
                      ? EdgeInsets.only(left: defaultMargin, right: 12)
                      : index == challenge.length - 1
                          ? EdgeInsets.only(right: defaultMargin)
                          : const EdgeInsets.only(right: 12),
                  child: Container(
                    width: 200,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [gradientColor, primaryColor],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/icon_time.png', width: 24),
                        const SizedBox(height: 8),
                        Text(title,
                            style: whiteTextStyle.copyWith(fontSize: 14)),
                        Text(time,
                            style: whiteTextStyle.copyWith(fontSize: 10)),
                        const SizedBox(height: 8),
                        LinearPercentIndicator(
                          width: 168,
                          lineHeight: 4,
                          percent: value,
                          padding: const EdgeInsets.all(0),
                          backgroundColor: gradientColor,
                          progressColor: greyColor,
                          barRadius: const Radius.circular(10),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset('assets/avatar2.png', width: 20),
                            Transform.translate(
                              offset: const Offset(-10, 0),
                              child:
                                  Image.asset('assets/avatar1.png', width: 20),
                            ),
                            Text(
                              '2 friends joined',
                              style: secondaryTextStyle.copyWith(
                                  fontWeight: light),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Learning',
                  style: primaryTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  'View all',
                  style: customTextStyle.copyWith(
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            height: 135,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: learning.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                String image = learning[index][0];
                String descripstion = learning[index][1];
                return Padding(
                  padding: index == 0
                      ? EdgeInsets.only(left: defaultMargin, right: 12)
                      : index == learning.length - 1
                          ? EdgeInsets.only(right: defaultMargin)
                          : const EdgeInsets.only(right: 12),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/$image'),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/icon_folder.png', width: 20),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  descripstion,
                                  style: whiteTextStyle.copyWith(fontSize: 14),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
