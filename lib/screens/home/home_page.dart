import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

import '../../data/data_habits.dart';
import '../../widgets/card_habit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isToday = true;
  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(190),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MiniButton(icon: 'icon_calendar.png', onTap: () {}),
                  MiniButton(icon: 'icon_notification.png', onTap: () {}),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Mert 👋🏻',
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Let’s make habits together!',
                        style: secondaryTextStyle,
                      )
                    ],
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xffDDF2FC),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/icon_averange_mood.png'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 32,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: secondaryTextColor.withOpacity(.5),
                ),
                child: Row(children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isToday = !isToday;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: isToday ? whiteColor : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Today',
                            style: customTextStyle.copyWith(
                              color: isToday ? primaryColor : greyTextColor,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isToday = !isToday;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: isToday ? Colors.transparent : whiteColor,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Clubs',
                                style: customTextStyle.copyWith(
                                  color: isToday ? greyTextColor : primaryColor,
                                  fontWeight: medium,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 22,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: isToday ? whiteColor : primaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    '2',
                                    style: customTextStyle.copyWith(
                                      color:
                                          isToday ? primaryColor : whiteColor,
                                      fontWeight: medium,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            collapsedHeight: 100,
            expandedHeight: 100,
            backgroundColor: Colors.transparent,
            pinned: false,
            flexibleSpace: Container(
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradientColor, primaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [.1, .9],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  CircularPercentIndicator(
                    radius: 25,
                    lineWidth: 3,
                    backgroundColor: const Color(0xffAFB4FF),
                    percent: .20,
                    progressColor: whiteColor,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text('20%',
                        style: whiteTextStyle.copyWith(fontSize: 18)),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your daily goals almost done! 🔥',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '1 of 4 completed',
                        style: customTextStyle.copyWith(
                          color: const Color(0xffAFB4FF),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 140,
            collapsedHeight: 140,
            pinned: false,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                children: [
                  Row(
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
                  const SizedBox(height: 4),
                  CardChallenge(
                    ontap: () {
                      Navigator.pushNamed(context, '/challenge-detail');
                    },
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Habits',
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
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: habits.length,
              (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: CardHabit(
                  icon: habits[index][0],
                  titleHabit: habits[index][1],
                  valueTarget: habits[index][2],
                  percentage: habits[index][3],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }
}
