import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var subjects = <dynamic>[].obs;

  @override
  void onInit() {
    // will fetchSubjects later
    super.onInit();
  }

  void fetchSubjects() async {
    // loading simulator...
    isLoading(true);
    await Future.delayed(Duration(seconds: 1));
    subjects.value = [
      {'title': 'Math'},
      {'title': 'Science'},
      {'title': 'History'},
    ];
    isLoading(false);
  }

  void openVideos(dynamic subject) {
    Get.toNamed('/video', arguments: subject);
  }
}
