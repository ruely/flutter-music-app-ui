import 'package:get/get.dart';
import 'controller.dart';

class SongBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SongController>(() => SongController());
  }
}
