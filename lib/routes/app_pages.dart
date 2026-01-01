import 'package:get/get.dart';
import 'package:learnloop/features/home/controllers/home_controller.dart';
import 'package:learnloop/features/home/screen/home_screen.dart';
import 'package:learnloop/features/onboarding/controllers/onboarding_controller.dart';
import 'package:learnloop/features/onboarding/screen/onboarding_screen.dart';
import 'package:learnloop/features/video_lessons/controller/videoslesson_controller.dart';
import 'package:learnloop/features/video_lessons/screen/videos_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    // Onboarding Page
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingScreen(),
      binding: BindingsBuilder(() {
        Get.put(OnboardingController());
      }),
    ),

    // Home Page
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
    ),

    // Video Page
    GetPage(
      name: AppRoutes.video,
      page: () => VideosPage(),
      binding: BindingsBuilder(() {
        Get.put(VideoController());
      }),
    ),
  ];
}
