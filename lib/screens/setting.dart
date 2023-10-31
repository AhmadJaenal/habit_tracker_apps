import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
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
              MiniButton(
                  icon: 'icon_back.png',
                  onTap: () {
                    Navigator.pop(context);
                  }),
              const SizedBox(width: 8),
              Text(
                'Settings',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 24,
                ),
              )
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 12),
              child: Text(
                'GENERAL',
                style: secondaryTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 436,
            collapsedHeight: 436,
            pinned: false,
            leading: Container(),
            flexibleSpace: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: whiteColor,
                border: Border.all(color: const Color(0xffEAECF0), width: 1),
              ),
              child: Column(
                children: [
                  CustomButtonSetting(
                      icon: 'icon_general.png', title: 'General', onTap: () {}),
                  CustomButtonSetting(
                      icon: 'icon_dark_mode.png',
                      title: 'Dark Mode',
                      addSwitchButton: true,
                      onTap: () {}),
                  CustomButtonSetting(
                      icon: 'icon_security.png',
                      title: 'Security',
                      onTap: () {}),
                  CustomButtonSetting(
                      icon: 'icon_notification.png',
                      title: 'Notifications',
                      onTap: () {}),
                  CustomButtonSetting(
                    icon: 'icon_volume_up.png',
                    title: 'Sounds',
                    onTap: () {},
                    addSwitchButton: true,
                  ),
                  CustomButtonSetting(
                    icon: 'icon_vacation_mode.png',
                    title: 'Vacation Mode',
                    onTap: () {},
                    lineBottom: false,
                    addSwitchButton: true,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 12),
              child: Text(
                'ABOUT US',
                style: secondaryTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 302,
            collapsedHeight: 302,
            pinned: false,
            leading: Container(),
            flexibleSpace: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: whiteColor,
                border: Border.all(color: const Color(0xffEAECF0), width: 1),
              ),
              child: Column(
                children: [
                  CustomButtonSetting(
                    icon: 'icon_star.png',
                    title: 'Rate Routiner',
                    onTap: () {},
                  ),
                  CustomButtonSetting(
                    icon: 'icon_share.png',
                    title: 'Share with Friends',
                    onTap: () {},
                  ),
                  CustomButtonSetting(
                    icon: 'icon_info.png',
                    title: 'About Us',
                    onTap: () {},
                  ),
                  CustomButtonSetting(
                    icon: 'icon_chat.png',
                    title: 'Support',
                    onTap: () {},
                    lineBottom: false,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 30),
          ),
        ],
      ),
    );
  }
}
