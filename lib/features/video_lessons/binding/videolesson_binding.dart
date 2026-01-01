import 'package:get/get.dart';
import 'package:learnloop/features/video_lessons/controller/videoslesson_controller.dart';

class VideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoController>(() => VideoController());
  }
}
