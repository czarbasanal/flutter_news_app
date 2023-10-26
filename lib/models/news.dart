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
  '#Travel',
  '#Trending'
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
