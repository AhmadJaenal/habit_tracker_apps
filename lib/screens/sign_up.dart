import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_textfield.dart';

import '../widgets/custom_button.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  void dispose() {
    usernameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    context, '/onboarding', (route) => false),
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
                'Create Account',
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
            CustomTextField(hintText: 'Enter your name', controller: usernameC),
            CustomTextField(
              hintText: 'Enter your email',
              controller: emailC,
            ),
            CustomTextField(
              hintText: 'Enter your password',
              controller: passwordC,
            ),
            const SizedBox(height: 16),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/sign-in-with-email', (route) => false),
                child: Text(
                  'I already have an account',
                  style: customTextStyle.copyWith(
                      fontWeight: medium, color: primaryColor),
                ),
              ),
            ),
            PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, '/choose-gender');
              },
              titleButton: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
