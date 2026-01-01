import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstTabController extends GetxController {
  var currentPage = 0.obs; // reactive page index
  final pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentPage.value = pageController.page!.round();
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
