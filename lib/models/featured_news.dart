class FeaturedNews {
  final String featuredImg;
  final String headline;
  final String description;
  final String readDuration;
  final String userProfileUrl;
  final String userName;
  final String datePosted;

  const FeaturedNews({
    required this.featuredImg,
    required this.headline,
    required this.description,
    required this.readDuration,
    required this.userProfileUrl,
    required this.userName,
    required this.datePosted,
  });
}

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

var featuredNews = [
  const FeaturedNews(
      featuredImg: 'assets/tourism.png',
      headline: '7 Hidden Gems in the Philippines to Visit in 2023',
      description:
          'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. Sea ut nibh imperdiet, postea corrumpit voluptatum eum te.',
      readDuration: '5 min read',
      userProfileUrl: 'assets/user-profile1.png',
      userName: 'Kuya Josh Ojenroc',
      datePosted: 'Sep 29, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/music.png',
      headline: 'The Most Anticipated Concerts of 2023',
      description:
          'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. Sea ut nibh imperdiet, postea corrumpit voluptatum eum te.',
      readDuration: '3 min read',
      userProfileUrl: 'assets/user-profile2.png',
      userName: 'Boss Mexl Mapags',
      datePosted: 'Oct 05, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/technology.png',
      headline: 'The Rise of Artificial Intelligence: Now and Beyond',
      description:
          'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. Sea ut nibh imperdiet, postea corrumpit voluptatum eum te.',
      readDuration: '8 min read',
      userProfileUrl: 'assets/user-profile3.png',
      userName: 'Bibiluvs',
      datePosted: 'Oct 09, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/fashion.jpg',
      headline: 'The Best Places to Shop for Clothes Online',
      description:
          'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. Sea ut nibh imperdiet, postea corrumpit voluptatum eum te.',
      readDuration: '4 min read',
      userProfileUrl: 'assets/user-profile4.png',
      userName: 'Boss Matskie',
      datePosted: 'Oct 15, 2023')
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
