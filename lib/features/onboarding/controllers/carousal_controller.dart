import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:learnloop/routes/app_routes.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  final int pageCount = 3;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  // Pass PageController from the screen
  void nextPage(PageController pageController) {
    if (currentPage.value < pageCount - 1) {
      pageController.animateToPage(
        currentPage.value + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      finishOnboarding();
    }
  }

  void skip() {
    finishOnboarding();
  }

  void finishOnboarding() {
    Get.offAllNamed(AppRoutes.home); // Make sure Routes is imported
  }
}
