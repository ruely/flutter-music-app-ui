import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mymusic/models/playlist_model.dart';
import 'package:mymusic/routes/routes.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.playlist, arguments: playlist);
      },
      child: Container(
        height: 70,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(0.6),
            borderRadius: BorderRadius.circular(15.0)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                playlist.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  playlist.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '${playlist.songs.length} songs',
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle,
                color: Colors.white,
              ))
        ]),
      ),
    );
  }
}
