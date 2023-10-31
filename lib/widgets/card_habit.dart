import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class CardHabit extends StatelessWidget {
  final String icon;
  final String titleHabit;
  final String valueTarget;
  final double percentage;
  const CardHabit({
    super.key,
    required this.icon,
    required this.titleHabit,
    required this.valueTarget,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Slidable(
        endActionPane: const ActionPane(motion: ScrollMotion(), children: [
          SizedBox(width: 8),
          SlideableCustom(
            icon: 'icon_fail.png',
            title: 'Fail',
          ),
          SizedBox(width: 8),
          SlideableCustom(
            icon: 'icon_arrow_right.png',
            title: 'Skip',
          ),
        ]),
        startActionPane: const ActionPane(
          motion: ScrollMotion(),
          children: [
            SlideableCustom(
              icon: 'icon_show.png',
              title: 'View',
            ),
            SizedBox(width: 8),
            SlideableCustom(
              icon: 'icon_check.png',
              title: 'Done',
            ),
            SizedBox(width: 8),
          ],
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: whiteColor,
            border: Border.all(color: const Color(0xffEAECF0), width: 1),
          ),
          child: Row(
            children: [
              CircularPercentIndicator(
                radius: 20,
                lineWidth: 3,
                backgroundColor: greyColor,
                percent: percentage,
                progressColor: primaryColor,
                circularStrokeCap: CircularStrokeCap.round,
                center: Image.asset('assets/$icon', width: 16),
              ),
              const SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titleHabit,
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    valueTarget,
                    style: secondaryTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(20, 0),
                    child: Image.asset('assets/avatar1.png', width: 28),
                  ),
                  Transform.translate(
                    offset: const Offset(10, 0),
                    child: Image.asset('assets/avatar2.png', width: 28),
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteTextColor,
                      border: Border.all(color: whiteColor, width: 1),
                    ),
                    child: Center(
                      child: Text(
                        '+3',
                        style: customTextStyle.copyWith(
                            color: primaryColor, fontWeight: bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12),
              MiniButton(
                icon: 'icon_add.png',
                width: 36,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlideableCustom extends StatelessWidget {
  final String title;
  final String icon;

  const SlideableCustom({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: whiteColor,
          border: Border.all(color: const Color(0xffEAECF0), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/$icon', width: 24),
            const SizedBox(height: 4),
            Text(title, style: secondaryTextStyle)
          ],
        ),
      ),
    );
  }
}

class CardChallenge extends StatelessWidget {
  final Function() ontap;
  const CardChallenge({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: whiteColor,
          border: Border.all(color: const Color(0xffEAECF0), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/icon_time.png', width: 24),
                const SizedBox(width: 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Best Runners! 🏃🏻‍',
                      style: primaryTextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      '5 days 13 hours left',
                      style: secondaryTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Transform.translate(
                          offset: const Offset(10, 0),
                          child: Image.asset('assets/avatar1.png', width: 24),
                        ),
                        Image.asset('assets/avatar2.png', width: 24),
                      ],
                    ),
                    Text(
                      '2 friends joined',
                      style: secondaryTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - (48 + 34),
              lineHeight: 4,
              percent: .2,
              padding: const EdgeInsets.all(0),
              backgroundColor: const Color(0xffEAECF0),
              progressColor: primaryColor,
              barRadius: const Radius.circular(10),
            ),
          ],
        ),
      ),
    );
  }
}
