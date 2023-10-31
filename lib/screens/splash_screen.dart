import 'dart:async';

import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/onboarding'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 80),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/pattern_circle.png')),
          gradient: LinearGradient(
            colors: [gradientColor, primaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [.1, .9],
          ),
        ),
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
