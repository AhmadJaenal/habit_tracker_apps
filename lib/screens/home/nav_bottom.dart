import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/data/data_habits.dart';
import 'package:routiner_habit_tracker_app/screens/home/activity_page.dart';
import 'package:routiner_habit_tracker_app/screens/home/explore_page.dart';
import 'package:routiner_habit_tracker_app/screens/home/home_page.dart';
import 'package:routiner_habit_tracker_app/screens/home/profile_page.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class NavBarBottom extends StatefulWidget {
  const NavBarBottom({super.key});

  @override
  State<NavBarBottom> createState() => _NavBarBottomState();
}

int currentIndex = 0;
List<String> emoticons = [
  'emoji_angry.png',
  'emoji_sad.png',
  'emoji_flat_face.png',
  'emoji_smile.png',
  'emoji_loved.png',
];

class _NavBarBottomState extends State<NavBarBottom> {
  bool _clicked = false;
  void _toggleRotation() {
    setState(() {
      _clicked = !_clicked;
    });
    showDialog(
      context: context,
      builder: (_) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 68,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: whiteColor,
                        border: Border.all(
                            color: const Color(0xffEAECF0), width: 2),
                      ),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Quit Bat Habit',
                              style:
                                  primaryTextStyle.copyWith(fontWeight: medium),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '\nEliminate bad habits',
                                    style: secondaryTextStyle.copyWith(
                                        fontSize: 12, fontWeight: light)),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Image.asset('assets/icon_shield_fail.png', width: 22),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 32),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: defaultMargin),
                                  child: Text(
                                    'NEW GOOD HABIT',
                                    style: secondaryTextStyle.copyWith(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: defaultMargin),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: whiteColor,
                                    border: Border.all(
                                        color: const Color(0xffEAECF0),
                                        width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Create Custom Habit',
                                        style: primaryTextStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: medium,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      MiniButton(
                                        icon: 'icon_add.png',
                                        width: 36,
                                        onTap: () => Navigator.pushNamed(
                                            context, '/create-habit'),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: defaultMargin),
                                  child: Text(
                                    'POPULAR HABITS',
                                    style: secondaryTextStyle.copyWith(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: popularHabits.length,
                                    itemBuilder: (context, index) {
                                      String emoji = popularHabits[index][0];
                                      String habit = popularHabits[index][1];
                                      String value = popularHabits[index][2];
                                      int color =
                                          int.parse(popularHabits[index][3]);
                                      return Padding(
                                        padding: index == 0
                                            ? EdgeInsets.only(
                                                left: defaultMargin, right: 12)
                                            : index == popularHabits.length - 1
                                                ? EdgeInsets.only(
                                                    right: defaultMargin)
                                                : const EdgeInsets.only(
                                                    right: 12),
                                        child: Container(
                                          width: 128,
                                          height: 102,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 12),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Color(color),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 32,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 6,
                                                        vertical: 4),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: whiteColor,
                                                ),
                                                child: Image.asset(
                                                    'assets/$emoji'),
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                habit,
                                                style:
                                                    primaryTextStyle.copyWith(
                                                        fontSize: 14,
                                                        fontWeight: medium,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                              ),
                                              const SizedBox(height: 2),
                                              Text(
                                                value,
                                                style:
                                                    primaryTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight: light,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        decoration:
                                                            TextDecoration
                                                                .none),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Expanded(
                      child: Container(
                        height: 68,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: whiteColor,
                          border: Border.all(
                              color: const Color(0xffEAECF0), width: 2),
                        ),
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'New Good Habit',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: medium),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\nFor a better life',
                                      style: secondaryTextStyle.copyWith(
                                          fontSize: 12, fontWeight: light)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Image.asset('assets/icon_shield_done.png',
                                width: 22),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  height: 68,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: whiteColor,
                    border:
                        Border.all(color: const Color(0xffEAECF0), width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Add Mood',
                          style: primaryTextStyle.copyWith(fontWeight: medium),
                          children: <TextSpan>[
                            TextSpan(
                                text: "\nHow're you feeling?",
                                style: secondaryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: light)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ListView.builder(
                          itemCount: emoticons.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            String emoticon = emoticons[index];
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 36,
                                height: 36,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: whiteColor,
                                  border: Border.all(
                                      color: const Color(0xffEAECF0), width: 2),
                                ),
                                child: Image.asset('assets/$emoticon'),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ).then((value) {
      setState(() {
        _clicked = !_clicked;
      });
    });
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const ExplorePage();
      case 2:
        return ActivityPage();
      case 3:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          height: 72,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: greyColor, width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: whiteColor,
                currentIndex: currentIndex,
                onTap: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/icon_home.png',
                        width: 24,
                        color: currentIndex == 0
                            ? primaryColor
                            : secondaryTextColor,
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      margin: const EdgeInsets.only(top: 10, right: 30),
                      child: Image.asset('assets/icon_active_explore.png',
                          width: 24),
                    ),
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10, right: 30),
                      child: Image.asset('assets/icon_explore.png', width: 24),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Container(
                      margin: const EdgeInsets.only(top: 10, left: 30),
                      child: Image.asset('assets/icon_active_reward.png',
                          width: 24),
                    ),
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10, left: 30),
                      child: Image.asset(
                        'assets/icon_reward.png',
                        width: 24,
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Image.asset('assets/icon_profile.png',
                          width: 24,
                          color: currentIndex == 3
                              ? primaryColor
                              : secondaryTextColor),
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: body(),
      floatingActionButton: TweenAnimationBuilder<double>(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
        tween: Tween<double>(
          begin: _clicked ? 0 : 45,
          end: _clicked ? 45 : 0,
        ),
        builder: (context, angle, child) {
          return Padding(
            padding: const EdgeInsets.only(top: 87),
            child: GestureDetector(
              onTap: _toggleRotation,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(angle / 360),
                child: Image.asset(
                  'assets/button_add.png',
                  width: 48,
                ),
              ),
            ),
          );
        },
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
