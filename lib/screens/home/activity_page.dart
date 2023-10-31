import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  bool isVisible = true;
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170),
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
                  Text(
                    'Activity',
                    style: primaryTextStyle.copyWith(
                        fontSize: 32, fontWeight: bold),
                  ),
                  MiniButton(
                      icon: 'icon_3_user.png',
                      onTap: () {
                        Navigator.pushNamed(context, '/leaderboard');
                      }),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'Weekly',
                style:
                    customTextStyle.copyWith(fontSize: 18, color: primaryColor),
              ),
              const SizedBox(height: 12),
              Text(
                'This week',
                style: primaryTextStyle.copyWith(fontSize: 14),
              ),
              Text(
                'May 28- Jun 3',
                style: secondaryTextStyle.copyWith(fontSize: 12),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            margin: EdgeInsets.fromLTRB(defaultMargin, 12, defaultMargin, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: whiteColor,
              border: Border.all(color: const Color(0xffEAECF0), width: 1),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: greyColor,
                      ),
                      child: Image.asset('assets/icon_eye.png'),
                    ),
                    const SizedBox(width: 12),
                    RichText(
                      text: TextSpan(
                        text: 'All Habits',
                        style: primaryTextStyle.copyWith(
                            fontWeight: medium, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nSummary',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: light),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    MiniButton(
                      width: 36,
                      icon:
                          isVisible ? 'icon_down.png' : 'icon_arrow_right.png',
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                isVisible
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SUCCESS RATE',
                                style:
                                    secondaryTextStyle.copyWith(fontSize: 10),
                              ),
                              Text(
                                '%98',
                                style: customTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                    color: greenColor),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'POINTS EARNED',
                                style:
                                    secondaryTextStyle.copyWith(fontSize: 10),
                              ),
                              Container(
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
                                      '1452',
                                      style: customTextStyle.copyWith(
                                          fontSize: 14,
                                          color: const Color(0xffFEA800)),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'SKIPPED',
                                style:
                                    secondaryTextStyle.copyWith(fontSize: 10),
                              ),
                              Text(
                                '4',
                                style: primaryTextStyle.copyWith(
                                    fontSize: 18, fontWeight: bold),
                              ),
                              const SizedBox(height: 4),
                            ],
                          ),
                          const SizedBox(width: 100),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'COMPLETED',
                                style:
                                    secondaryTextStyle.copyWith(fontSize: 10),
                              ),
                              Text(
                                '244',
                                style: primaryTextStyle.copyWith(
                                    fontSize: 18, fontWeight: bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'BEST STREAK DAY',
                                style:
                                    secondaryTextStyle.copyWith(fontSize: 10),
                              ),
                              Text(
                                '22',
                                style: primaryTextStyle.copyWith(
                                    fontSize: 18, fontWeight: bold),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'FAILED',
                                style:
                                    secondaryTextStyle.copyWith(fontSize: 10),
                              ),
                              Text(
                                '2',
                                style: customTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                    color: redColor),
                              ),
                              const SizedBox(height: 4),
                            ],
                          ),
                          const Spacer(),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
