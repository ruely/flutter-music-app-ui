import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymusic/screens/splash/controller.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    width: controller.animation.value * 200,
                    height: controller.animation.value * 200,
                  ),
                ],
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var yt = YoutubeExplode();
          var video =
              await yt.videos.get('https://youtube.com/watch?v=GxldQ9eX2wo');
          print('video.title ${video.title}');
          print('video.title ${video.author}');
          print('video.title ${video.duration}');
          var manifest = await yt.videos.streamsClient
              .getManifest('https://www.youtube.com/watch?v=GxldQ9eX2wo');
          var streamInfo = manifest.audioOnly.withHighestBitrate();

          print('streamInfo  $streamInfo ');
          var stream = yt.videos.streamsClient.get(streamInfo);

          var file = File("untilifoundyou.mp3");
          file.create();
          var fileStream = file.openWrite();
          await stream.pipe(fileStream);
          await fileStream.flush();
          await fileStream.close();
          yt.close();
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
