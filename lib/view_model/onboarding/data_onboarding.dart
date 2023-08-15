// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

class OnBoardingViewModel {
  final List<OnboardingPage> onboardingData;
  final int currentPage;
  static const String title1 = 'Formulas';
  static const String description1 =
      'Discover and explore chemical formulas like never before'
      'Unlock the world of chemical compounds and equations.'
      'Master the art of chemical formulas with our comprehensive tool.';
  // TODO FIRST
  static const String title2 = 'CHAT AI';
  static const String description2 =
      'Meet our friendly AI chat assistant, ready to answer your chemistry questions.'
      'Get instant help and guidance from our AI-powered chemistry expert.'
      'Experience personalized chemistry assistance through our chat AI.';
  // TODO SCAND
  static const String title3 = 'Virtual Lab';
  static const String description3 =
      'Step into our virtual chemistry lab and conduct experiments without leaving your device.'
      'Unleash your inner scientist with our immersive virtual lab experience.'
      'Explore a safe and interactive environment to perform chemistry experiments.';
  // TODO 3TH
  static const String title4 = 'Equation Solving';
  static const String description4 =
      ' Solve complex chemical equations effortlessly with our powerful equation-solving tool.'
      'Crack the code of chemical equations using our intuitive solving feature.'
      'Achieve accurate results and find solutions to chemical equations in no time.';
  // TODO 4TH
  static const String title5 = 'Periodic Table';
  static const String description5 =
      'Navigate the periodic table and delve into the properties of elements with ease.'
      'Unlock the secrets of the elements through our interactive periodic table.'
      'Discover comprehensive information about each element at your fingertips.';
  OnBoardingViewModel({
    required this.onboardingData,
     required this.currentPage,
  });
  OnBoardingViewModel copyWith({
    List<OnboardingPage>? onboardingData,
    int? currentPage,
  }) {
    return OnBoardingViewModel(
      onboardingData: onboardingData ?? this.onboardingData,
      currentPage: currentPage ?? this.currentPage,
    );
  // TODO 5TH
}}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;

  const OnboardingPage(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          20.getH,
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
