import 'package:flutter/material.dart';

import 'onboarding/onboarding_one.dart';
import 'onboarding/onboarding_three.dart';
import 'onboarding/onborading_two.dart';

class OnboardingUnified extends StatefulWidget {
  @override
  _OnboardingUnifiedState createState() => _OnboardingUnifiedState();
}

class _OnboardingUnifiedState extends State<OnboardingUnified> {
  final controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        OnboardingOne(),
        OnboardingTwo(),
        OnboardingThree(),
      ],
    );
  }
}
