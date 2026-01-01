import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnloop/features/home/widgets/first_tab.dart';
import 'package:learnloop/features/home/widgets/second_tab.dart';
import 'package:learnloop/features/home/widgets/third_tab.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.put(HomeController());

  final List<Widget> pages = [FirstTab(), SecondTab(), ThirdTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: just switch widget without Obx
      body: Obx(() {
        // Only wrap the switching logic
        return pages[controller.selectedIndex.value];
      }),

      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTab,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Videos',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        );
      }),
    );
  }
}
