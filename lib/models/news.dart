class ShortForYou {
  final String thumbnailUrl;
  final String heading;
  final String views;

  const ShortForYou(
      {required this.thumbnailUrl, required this.heading, required this.views});
}

List<String> categories = [
  '#Food',
  '#Music',
  '#Technology',
  '#Sports',
  '#Fashion',
  '#Tourism',
  '#Trending'
];

List<List<String>> images = [
  ['assets/tourism.png', 'assets/tourism-1.png', 'assets/tourism-2.png'],
  ['assets/music.png', 'assets/music-1.png', 'assets/music-2.png'],
  [
    'assets/technology.png',
    'assets/technology-1.png',
    'assets/technology-2.png'
  ],
  ['assets/fashion.jpg', 'assets/fashion-1.png', 'assets/fashion-2.png'],
];

var shortForYou = [
  const ShortForYou(
      thumbnailUrl: 'assets/thumbnail-1.jpg',
      heading: 'Skateboard like a Pro',
      views: '20,186'),
  const ShortForYou(
      thumbnailUrl: 'assets/thumbnail-2.jpg',
      heading: 'Filming Basics',
      views: '11,069'),
  const ShortForYou(
      thumbnailUrl: 'assets/thumbnail-3.jpg',
      heading: 'How to make the best coffee',
      views: '99,853'),
  const ShortForYou(
      thumbnailUrl: 'assets/thumbnail-4.jpg',
      heading: 'Training my dog right',
      views: '40,209'),
  const ShortForYou(
      thumbnailUrl: 'assets/thumbnail-5.jpg',
      heading: 'Do makeup in under 5 mins',
      views: '502,903'),
];
