import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnloop/data/constants/colors.dart';
import 'package:learnloop/features/onboarding/widgets/tertiary_onboarding.dart';
import 'package:learnloop/features/onboarding/widgets/initial_onboarding.dart.dart';
import 'package:learnloop/features/onboarding/widgets/secondary_onboarding.dart.dart';
import 'package:learnloop/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController pageController = PageController();

  final List<Widget> myPages = [
    OnboardingInitial(),
    OnboardingSecondary(),
    OnboardingTertiary(),
  ];

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize controller with dynamic page count
    final controller = Get.put(OnboardingController(pageCount: myPages.length));

    return Scaffold(
      backgroundColor: AppColors.accentColor,
      body: SafeArea(
        child: Column(
          children: [
            // PageView using your pages
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: controller.onPageChanged,
                children: myPages,
              ),
            ),

            // Bottom row with Skip, indicator, Next/Start
            Obx(() {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                      controller: pageController,
                      count: myPages.length,
                      effect: WormEffect(
                        dotColor: Colors.grey.shade300,
                        activeDotColor: Colors.blue,
                        dotHeight: 12,
                        dotWidth: 12,
                      ),
                    ),
                    SizedBox(height: 40),

                    InkWell(
                      onTap: () => controller.nextPage(pageController),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Get.offAllNamed(AppRoutes.home);
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
