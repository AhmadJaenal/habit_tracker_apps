import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

class CustomButton extends StatelessWidget {
  final String titleButton;
  final String icon;
  final bool isBig;

  final Function() onPressed;
  const CustomButton({
    super.key,
    required this.titleButton,
    this.icon = '',
    this.isBig = true,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: whiteColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: isBig
            ? const EdgeInsets.symmetric(vertical: 16)
            : const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == ''
              ? const SizedBox()
              : Image.asset('assets/$icon', height: 16),
          const SizedBox(width: 4),
          Text(
            titleButton,
            style: primaryTextStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String titleButton;

  final Function() onPressed;
  const PrimaryButton({
    super.key,
    required this.titleButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultMargin),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16)),
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          height: 24,
          child: Center(
            child: Text(
              titleButton,
              style: whiteTextStyle.copyWith(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}

class MiniButton extends StatelessWidget {
  final String icon;
  final double width;
  final Function() onTap;
  const MiniButton(
      {super.key, required this.icon, this.width = 48, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: width,
        padding: EdgeInsets.all(width / 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width / 3),
          color: whiteColor,
          border: Border.all(color: const Color(0xffEAECF0), width: 1),
        ),
        child: Image.asset('assets/$icon'),
      ),
    );
  }
}

class CustomButtonSetting extends StatelessWidget {
  final String title;
  final String icon;
  bool addSwitchButton;
  bool lineBottom;
  final Function() onTap;
  CustomButtonSetting({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
    this.addSwitchButton = false,
    this.lineBottom = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 67,
        padding: const EdgeInsets.only(top: 16, bottom: 12),
        decoration: BoxDecoration(
          border: lineBottom
              ? Border(bottom: BorderSide(color: greyColor))
              : const Border(),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/$icon', height: 24),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                ),
                const Spacer(),
                addSwitchButton
                    ? const CustomSwitchButton()
                    : Image.asset(
                        'assets/icon_arrow_right.png',
                        height: 24,
                        color: greyTextColor,
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSwitchButton extends StatefulWidget {
  const CustomSwitchButton({super.key});

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSwitched = !isSwitched;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              width: 48,
              height: 28,
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isSwitched ? greenColor : secondaryTextColor,
              ),
              child: Row(
                mainAxisAlignment: isSwitched
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
