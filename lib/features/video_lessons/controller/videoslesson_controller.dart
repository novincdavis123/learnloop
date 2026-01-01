import 'package:get/get.dart';

class VideoController extends GetxController {
  var selectedIndex = 0.obs;
  var videos = <dynamic>[].obs; // Placeholder list

  @override
  void onInit() {
    final arg = Get.arguments;
    if (arg != null && arg['videos'] != null) {
      videos.value = arg['videos'];
    } else {
      videos.value = [
        {'title': 'Video 1', 'url': 'https://...'},
        {'title': 'Video 2', 'url': 'https://...'},
      ];
    }
    super.onInit();
  }

  void selectVideo(int index) {
    selectedIndex.value = index;
  }
}
