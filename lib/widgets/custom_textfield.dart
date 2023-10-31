import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double paddingTop;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.paddingTop = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: TextField(
        controller: controller,
        cursorColor: primaryTextColor,
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
        decoration: InputDecoration(
          labelText: '',
          hintText: hintText,
          hintStyle: secondaryTextStyle,
          suffix: GestureDetector(
            onTap: () {
              controller.clear();
            },
            child: Image.asset('assets/icon_remove.png', width: 24),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: greenColor, width: 2),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: greyTextColor.withOpacity(.3),
            ), // Warna border saat tidak dalam keadaan fokus
          ),
        ),
      ),
    );
  }
}
