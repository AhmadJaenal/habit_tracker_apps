import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/data/data_habits.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/card_achievement.dart';
import 'package:routiner_habit_tracker_app/widgets/card_activity.dart';
import 'package:routiner_habit_tracker_app/widgets/card_friend.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  bool isActivity = true;
  bool isFriend = false;
  bool isAchievements = false;
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final bodyHeight = height - paddingTop;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
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
                  MiniButton(
                    icon: 'icon_setting.png',
                    onTap: () {
                      Navigator.pushNamed(context, '/setting-page');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Image.asset('assets/image_profile.png', width: 56),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      Text('Juan Juan',
                          style: primaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium)),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffFFF3DA),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/icon_medal.png', width: 16),
                            Text(
                              '1452 Points',
                              style: customTextStyle.copyWith(
                                  fontSize: 14, color: const Color(0xffFEA800)),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
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
                          isActivity = true;
                          isFriend = false;
                          isAchievements = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: isActivity ? whiteColor : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Activity',
                            style: customTextStyle.copyWith(
                              color: isActivity ? primaryColor : greyTextColor,
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
                          isActivity = false;
                          isFriend = true;
                          isAchievements = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: isFriend ? whiteColor : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Friends',
                            style: customTextStyle.copyWith(
                              color: isFriend ? primaryColor : greyTextColor,
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
                          isActivity = false;
                          isFriend = false;
                          isAchievements = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:
                              isAchievements ? whiteColor : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Achievements',
                            style: customTextStyle.copyWith(
                              color:
                                  isAchievements ? primaryColor : greyTextColor,
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            isActivity
                ? const HeaderActivity()
                : isFriend
                    ? const HeaderFriend()
                    : const HeaderAchievements(),
            isActivity
                ? const ActivityContent()
                : isFriend
                    ? const FriendsContent()
                    : const AchievementContent(),
            const SliverToBoxAdapter(child: SizedBox(height: 80)),
          ],
        ),
      ),
    );
  }
}

class ActivityContent extends StatelessWidget {
  const ActivityContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: activity.length,
        (context, index) {
          String titleActivity = activity[index][0];
          String date = activity[index][1];
          String icon = activity[index][2];
          return CardActivity(
            titleActivity: titleActivity,
            date: date,
            icon: icon,
          );
        },
      ),
    );
  }
}

class FriendsContent extends StatelessWidget {
  const FriendsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: friends.length,
        (context, index) {
          String avatar = friends[index][0];
          String name = friends[index][1];
          String points = friends[index][2];
          return CardFriend(name: name, point: points, avatar: avatar);
        },
      ),
    );
  }
}

class AchievementContent extends StatelessWidget {
  const AchievementContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: achievements.length,
        (context, index) {
          String icon = achievements[index][0];
          String titleAchievement = achievements[index][1];
          String time = achievements[index][2];
          return CardAchievement(
              titleAchievement: titleAchievement, icon: icon, time: time);
        },
      ),
    );
  }
}

class HeaderAchievements extends StatelessWidget {
  const HeaderAchievements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          '2 Achievements',
          style: primaryTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}

class HeaderFriend extends StatelessWidget {
  const HeaderFriend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Text(
              '19 Friends',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            const Spacer(),
            MiniButton(icon: 'icon_add.png', onTap: () {}),
            const SizedBox(width: 4),
            MiniButton(icon: 'icon_edit.png', onTap: () {})
          ],
        ),
      ),
    );
  }
}

class HeaderActivity extends StatelessWidget {
  const HeaderActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Showing last month activity',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            MiniButton(icon: 'icon_filter.png', onTap: () {})
          ],
        ),
      ),
    );
  }
}
