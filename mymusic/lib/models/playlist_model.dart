import 'package:mymusic/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlists = [
    Playlist(
        title: 'Hip-hop R&B Mix',
        songs: Song.songs,
        imageUrl: 'assets/images/randb.png'),
    Playlist(
        title: 'Rock & Roll',
        songs: Song.songs,
        imageUrl: 'assets/images/rockandroll.jpg'),
    Playlist(
        title: 'Techno',
        songs: Song.songs,
        imageUrl: 'assets/images/techno.jpg')
  ];
}
