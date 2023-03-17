import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymusic/routes/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
