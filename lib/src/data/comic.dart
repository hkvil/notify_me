class Comic {
  final String title; //Title of comic
  final String imageUrl; //Image URL of comic, for now use asset image
  final int lastChapter; //Latest chapter of comic
  final int readChapter; //Latest chapter read by user

  Comic({
    required this.title,
    required this.imageUrl,
    required this.lastChapter,
    required this.readChapter,
  });
}

final List<Comic> comics = [
  Comic(
    title: 'One Piece',
    imageUrl: 'assets/images/cover/one-piece.jpg',
    lastChapter: 1000,
    readChapter: 999,
  ),
  Comic(
    title: 'One Punch Man',
    imageUrl: 'assets/images/cover/one-punch-man.jpeg',
    lastChapter: 150,
    readChapter: 149,
  ),
  Comic(
    title: 'Berserk',
    imageUrl: 'assets/images/cover/berserk.jpg',
    lastChapter: 364,
    readChapter: 363,
  ),
  Comic(
    title: 'Blue Lock',
    imageUrl: 'assets/images/cover/blue-lock.jpg',
    lastChapter: 150,
    readChapter: 149,
  ),
  Comic(
    title: 'Demonic Emperor',
    imageUrl: 'assets/images/cover/demonic-emperor.jpg',
    lastChapter: 200,
    readChapter: 199,
  ),
  Comic(
    title: 'Martial Peak',
    imageUrl: 'assets/images/cover/martial-peak.jpg',
    lastChapter: 1000,
    readChapter: 999,
  ),
  Comic(
    title: 'Nano Machine',
    imageUrl: 'assets/images/cover/nano-machine.jpg',
    lastChapter: 100,
    readChapter: 99,
  ),
  Comic(
    title: 'Tower of God',
    imageUrl: 'assets/images/cover/tower-of-god.jpg',
    lastChapter: 500,
    readChapter: 499,
  ),
  Comic(
    title: 'Vagabond',
    imageUrl: 'assets/images/cover/vagabond.jpg',
    lastChapter: 327,
    readChapter: 326,
  ),
  Comic(
    title: 'Absolute Sword Sense',
    imageUrl: 'assets/images/cover/absolute-sword-sense.jpg',
    lastChapter: 50,
    readChapter: 49,
  ),
];
