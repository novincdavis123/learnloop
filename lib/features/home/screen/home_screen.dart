import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnloop/features/home/widgets/first_tab.dart';
import 'package:learnloop/features/home/widgets/fourth_tab.dart';
import 'package:learnloop/features/home/widgets/second_tab.dart';
import 'package:learnloop/features/home/widgets/third_tab.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.put(HomeController());

  final List<Widget> pages = [FirstTab(), SecondTab(), ThirdTab(), FourthTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Expanded ensures the page content doesn't overflow
          Expanded(child: Obx(() => pages[controller.selectedIndex.value])),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTab,
          type: BottomNavigationBarType.fixed, // ensure all 4 items visible
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_sharp),
              label: 'Books',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
