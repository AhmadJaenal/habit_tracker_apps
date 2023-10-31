import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/data/data_habits.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/card_leaderboard.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/pattern_circle.png')),
              gradient: LinearGradient(
                colors: [gradientColor, primaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [.1, .9],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(defaultMargin, paddingTop * 1.5,
                  defaultMargin, defaultMargin),
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
                      const SizedBox(width: 8),
                      Text(
                        'Activity',
                        style: whiteTextStyle.copyWith(
                            fontSize: 32, fontWeight: bold),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/${leaderboard[1][2]}',
                            width: 64,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            leaderboard[1][0],
                            style: whiteTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 90,
                            height: 125,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 32),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: whiteColor),
                            child: Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '2',
                                    style: customTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 16,
                                        color: primaryColor),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'nd',
                                        style: customTextStyle.copyWith(
                                          fontSize: 12,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffFFF3DA),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/icon_medal.png',
                                          width: 16),
                                      Text(
                                        leaderboard[1][1].toString(),
                                        style: customTextStyle.copyWith(
                                            fontSize: 14,
                                            color: const Color(0xffFEA800)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/icon_crown.png', width: 24),
                          const SizedBox(height: 12),
                          Image.asset(
                            'assets/${leaderboard[0][2]}',
                            width: 64,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            leaderboard[0][0],
                            style: whiteTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 90,
                            height: 150,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 32),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: whiteColor),
                            child: Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '1',
                                    style: customTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 16,
                                        color: primaryColor),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'nd',
                                        style: customTextStyle.copyWith(
                                          fontSize: 12,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffFFF3DA),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/icon_medal.png',
                                          width: 16),
                                      Text(
                                        leaderboard[0][1].toString(),
                                        style: customTextStyle.copyWith(
                                            fontSize: 14,
                                            color: const Color(0xffFEA800)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/${leaderboard[2][2]}',
                            width: 64,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            leaderboard[2][0],
                            style: whiteTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 90,
                            height: 115,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 32),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: whiteColor),
                            child: Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: '3',
                                    style: customTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 16,
                                        color: primaryColor),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'nd',
                                        style: customTextStyle.copyWith(
                                          fontSize: 12,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffFFF3DA),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/icon_medal.png',
                                          width: 16),
                                      Text(
                                        leaderboard[2][1].toString(),
                                        style: customTextStyle.copyWith(
                                            fontSize: 14,
                                            color: const Color(0xffFEA800)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: leaderboard.length - 3,
                      padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return CardLeaderboard(
                          index: (index + 4).toString(),
                          avatar: leaderboard[index + 3][2],
                          name: leaderboard[index + 3][0],
                          point: leaderboard[index + 3][1].toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
