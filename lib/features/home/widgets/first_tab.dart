import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnloop/data/constants/colors.dart';
import 'package:learnloop/data/constants/icons.dart';
import 'package:learnloop/data/constants/images.dart';
import 'package:learnloop/features/home/controllers/carousal_controller.dart';

class FirstTab extends StatelessWidget {
  FirstTab({super.key});

  final FirstTabController controller = Get.put(FirstTabController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(height: 330, width: double.infinity),
              Image.asset(
                AppIcons.frame,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 70,
                left: 20,
                right: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Good Morning, Arjun',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.accentColor,
                          ),
                          child: Row(
                            children: [
                              const Text('Day 7'),
                              Image.asset(AppIcons.fire),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: AppColors.accentColor,
                          radius: 20,
                          child: Image.asset(AppIcons.notifications),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 150,
                left: 30,
                right: 30,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 140,
                  child: PageView(
                    controller: controller.pageController,
                    children: List.generate(
                      4,
                      (index) => Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          Images.students,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Page indicator
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 12,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: index == controller.currentPage.value
                              ? Colors.yellow
                              : Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
