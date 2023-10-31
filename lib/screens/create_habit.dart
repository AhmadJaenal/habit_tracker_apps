import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_textfield.dart';

class CreateHabit extends StatefulWidget {
  CreateHabit({super.key});

  @override
  State<CreateHabit> createState() => _CreateHabitState();
}

class _CreateHabitState extends State<CreateHabit> {
  final TextEditingController habitController = TextEditingController();

  @override
  void dispose() {
    habitController.dispose();
    super.dispose();
  }

  @override
  bool isSwitched = true;
  bool isBuildHabit = true;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/nav-bar', (route) => false),
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
                'Create Custom Habit',
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
            const SizedBox(height: 12),
            CustomTextField(
                hintText: 'Walk', controller: habitController, paddingTop: 0),
            const SizedBox(height: 16),
            Text(
              'ICON AND COLOR',
              style: primaryTextStyle.copyWith(fontWeight: bold, fontSize: 10),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 68,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: whiteColor,
                      border:
                          Border.all(color: const Color(0xffEAECF0), width: 1),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: secondaryTextColor.withOpacity(.5),
                          ),
                          child: Image.asset('assets/icon_walk.png'),
                        ),
                        const SizedBox(width: 12),
                        RichText(
                          text: TextSpan(
                            text: 'Walking',
                            style:
                                primaryTextStyle.copyWith(fontWeight: medium),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\nIcon',
                                  style: secondaryTextStyle.copyWith(
                                      fontSize: 12, fontWeight: light)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 68,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: whiteColor,
                      border:
                          Border.all(color: const Color(0xffEAECF0), width: 1),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: orangeColor,
                          ),
                        ),
                        const SizedBox(width: 12),
                        RichText(
                          text: TextSpan(
                            text: 'Orange',
                            style:
                                primaryTextStyle.copyWith(fontWeight: medium),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\nColor',
                                  style: secondaryTextStyle.copyWith(
                                      fontSize: 12, fontWeight: light)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'GOAL',
              style: primaryTextStyle.copyWith(fontWeight: bold, fontSize: 10),
            ),
            const SizedBox(height: 4),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: whiteColor,
                border: Border.all(color: const Color(0xffEAECF0), width: 1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '1 times',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nor more per day',
                                style: secondaryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: light)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      MiniButton(icon: 'icon_edit.png', onTap: () {})
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondaryTextColor.withOpacity(.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/icon_clockwise.png', width: 16),
                        const SizedBox(width: 4),
                        Text(
                          'Daily',
                          style: primaryTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                        const SizedBox(width: 12),
                        Image.asset('assets/icon_paper.png', width: 16),
                        const SizedBox(width: 4),
                        Text(
                          'Every Day',
                          style: primaryTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'REMINDERS',
              style: primaryTextStyle.copyWith(fontWeight: bold, fontSize: 10),
            ),
            const SizedBox(height: 4),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: whiteColor,
                border: Border.all(color: const Color(0xffEAECF0), width: 1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Remember to set off time for a workout\ntoday.',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: light),
                      ),
                      const SizedBox(width: 12),
                      const CustomSwitchButton(),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondaryTextColor.withOpacity(.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/icon_time_circle.png', width: 16),
                        const SizedBox(width: 4),
                        Text(
                          '09:30',
                          style: primaryTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                        const SizedBox(width: 12),
                        Image.asset('assets/icon_bell.png', width: 16),
                        const SizedBox(width: 4),
                        Text(
                          'Every Day',
                          style: primaryTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'HABIT TYPE',
              style: primaryTextStyle.copyWith(fontWeight: bold, fontSize: 10),
            ),
            const SizedBox(height: 4),
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
                        isBuildHabit = !isBuildHabit;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: isBuildHabit ? whiteColor : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          'Build',
                          style: customTextStyle.copyWith(
                            color: isBuildHabit ? primaryColor : greyTextColor,
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
                        isBuildHabit = !isBuildHabit;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: isBuildHabit ? Colors.transparent : whiteColor,
                      ),
                      child: Center(
                        child: Text(
                          'Quit',
                          style: customTextStyle.copyWith(
                            color: isBuildHabit ? greyTextColor : primaryColor,
                            fontWeight: medium,
                          ),
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
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: PrimaryButton(
          onPressed: () {},
          titleButton: 'Add Habit',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
