import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnloop/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final int pageCount;
  var currentPage = 0.obs;

  OnboardingController({required this.pageCount});

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage(PageController controller) {
    if (currentPage.value < pageCount - 1) {
      // go to next page
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // last page -> go to HomeScreen
      Get.offAllNamed(AppRoutes.home);
    }
  }
}
