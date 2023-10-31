import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:routiner_habit_tracker_app/themed/theme.dart';
import 'package:routiner_habit_tracker_app/widgets/custom_button.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  List<List<String>> banner = [
    [
      'image_banner1.png',
      'Create\nGood Habits',
      'Change your life by slowly adding new healty habits and sticking to them.'
    ],
    [
      'image_banner2.png',
      'Track\nYour Progress',
      'Everyday you become one step closer to your goal. Don\'t give up!'
    ],
    [
      'image_banner3.png',
      'Stay Together\nand Strong',
      'Find friends to discuss common topics. Complete challenges together.'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 80),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [gradientColor, primaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [.1, .9],
              ),
            ),
            child: Center(child: Image.asset('assets/pattern_circle.png')),
          ),
          Column(
            children: [
              Container(
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      aspectRatio: 2,
                      viewportFraction: 1,
                      height: height * .72,
                      scrollPhysics: const BouncingScrollPhysics(),
                      onPageChanged: ((index, reason) {
                        setState(() {
                          _current = index;
                        });
                      })),
                  items: banner.map((hero) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 52),
                          Image.asset(
                            'assets/${hero[0]}',
                            width: 400,
                            height: height * .36,
                            // fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 32),
                          Text(
                            hero[1],
                            style: whiteTextStyle.copyWith(
                              fontSize: 40,
                              fontWeight: bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            hero[2],
                            style: customTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                              color: const Color(0xffD7D9FF),
                            ),
                          ),
                          const SizedBox(height: 48),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  children: banner.asMap().entries.map((e) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(e.key),
                      child: Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == e.key ? whiteColor : gradientColor,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: CustomButton(
                  titleButton: 'Continue with E-mail',
                  icon: 'icon_login.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in-with-email');
                  },
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      titleButton: 'Apple',
                      icon: 'icon_apple.png',
                      isBig: false,
                      onPressed: () {},
                    ),
                    CustomButton(
                      titleButton: 'Google',
                      icon: 'icon_google.png',
                      isBig: false,
                      onPressed: () {},
                    ),
                    CustomButton(
                      titleButton: 'Facebook',
                      icon: 'icon_facebook.png',
                      isBig: false,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  'By continuing you agree Terms of Services & Privacy Policy ',
                  style: customTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                    color: const Color(0xffAFB4FF),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
