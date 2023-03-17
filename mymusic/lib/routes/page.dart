import 'package:get/get.dart';
import 'package:mymusic/routes/routes.dart';

import '../screens/home/index.dart';
import '../screens/playlist/index.dart';
import '../screens/song/index.dart';
import '../screens/splash/index.dart';

class AppPages {
  static const initial = AppRoutes.initial;
  //static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.initial,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.playlist,
      page: () => const PlaylistScreen(),
      binding: PlaylistBinding(),
    ),
    GetPage(
      name: AppRoutes.song,
      page: () => const SongScreen(),
      binding: SongBinding(),
    )
  ];
}
