import 'package:get/get.dart';
import 'controller.dart';

class PlaylistBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaylistController>(() => PlaylistController());
  }
}
