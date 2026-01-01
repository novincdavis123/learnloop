import 'package:flutter/material.dart';
import 'package:learnloop/data/constants/colors.dart';
import 'package:learnloop/data/constants/icons.dart';
import 'package:learnloop/data/constants/images.dart';

class OnboardingTertiary extends StatelessWidget {
  const OnboardingTertiary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset(Images.initialOnboarding, fit: BoxFit.contain),
            ),
          ),
          Positioned(
            bottom: -220,
            right: -40,
            child: CircleAvatar(
              radius: 250,
              backgroundColor: AppColors.accentColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Smarter Learning\n Starts Here',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    textAlign: TextAlign.center,
                    'Personalized lessons that adapt to\n your pace and goals.',
                  ),
                  SizedBox(height: 160),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Center(child: Image.asset(AppIcons.logo)),
          ),
        ],
      ),
    );
  }
}
