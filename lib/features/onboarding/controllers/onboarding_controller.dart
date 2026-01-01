import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs; // Tracks PageView index

  // Called when page changes
  void onPageChanged(int index) {
    currentPage.value = index;
  }

  // Navigating Home when onboarding finishes
  void finishOnboarding() {
    Get.offAllNamed('/home');
  }
}
