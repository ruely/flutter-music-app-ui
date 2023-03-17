class Song {
  final String title, description, url, coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: 'Until I Found You',
      description: 'Until I Found You',
      url: 'assets/musics/untilifoundyou.mp3',
      coverUrl: 'assets/images/untilifoundyou.jpg',
    ),
    Song(
      title: 'Ikaw Lang',
      description: 'Ikaw Lang',
      url: 'assets/musics/ikawlang.mp3',
      coverUrl: 'assets/images/ikawlang.jpg',
    ),
    Song(
      title: 'Iris',
      description: 'Iris',
      url: 'assets/musics/iris.mp3',
      coverUrl: 'assets/images/iris.jpg',
    ),
    Song(
      title: '214',
      description: '214',
      url: 'assets/musics/214.mp3',
      coverUrl: 'assets/images/214.jpg',
    ),
  ];
}
