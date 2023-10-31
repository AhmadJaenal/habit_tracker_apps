import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:routiner_habit_tracker_app/screens/challenge_detail.dart';
import 'package:routiner_habit_tracker_app/screens/choose_gender.dart';
import 'package:routiner_habit_tracker_app/screens/choose_habits.dart';
import 'package:routiner_habit_tracker_app/screens/create_habit.dart';
import 'package:routiner_habit_tracker_app/screens/home/home_page.dart';
import 'package:routiner_habit_tracker_app/screens/home/nav_bottom.dart';
import 'package:routiner_habit_tracker_app/screens/leaderboard.dart';
import 'package:routiner_habit_tracker_app/screens/onboarding.dart';
import 'package:routiner_habit_tracker_app/screens/setting.dart';
import 'package:routiner_habit_tracker_app/screens/sign_in_with_email.dart';
import 'package:routiner_habit_tracker_app/screens/sign_up.dart';
import 'package:routiner_habit_tracker_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => Onboarding(),
        '/home-page': (context) => const HomePage(),
        '/nav-bar': (context) => const NavBarBottom(),
        '/sign-in-with-email': (context) => SignInWithEmail(),
        '/sign-up': (context) => SignUp(),
        '/choose-gender': (context) => const ChooseGender(),
        '/choose-habits': (context) => ChooseHabits(),
        '/challenge-detail': (context) => const ChallengeDetail(),
        '/create-habit': (context) => CreateHabit(),
        '/setting-page': (context) => const SettingPage(),
        '/leaderboard': (context) => const Leaderboard(),
      },
    );
  }
}
