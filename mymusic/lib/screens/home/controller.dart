import 'package:get/get.dart';
import 'package:mymusic/routes/routes.dart';
import 'state.dart';

class HomeController extends GetxController {
  final state = HomeState();

  HomeController();

  changeScreen(int index) async {
    state.index.value = index;
  }

  playlist() {
    Get.offAndToNamed(AppRoutes.playlist);
  }

  song() {
    Get.offAndToNamed(AppRoutes.song);
  }
}
