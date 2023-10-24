class FeaturedNews {
  final String featuredImg;
  final String headline;
  final String description;
  final String userProfileUrl;
  final String userName;
  final String datePosted;

  const FeaturedNews({
    required this.featuredImg,
    required this.headline,
    required this.description,
    required this.userProfileUrl,
    required this.userName,
    required this.datePosted,
  });
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
      userProfileUrl: 'assets/user-profile1.png',
      userName: 'Kuya Josh Ojenroc',
      datePosted: 'September 29, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/music.png',
      headline: 'The Most Anticipated Concerts of 2023',
      description:
          'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. Sea ut nibh imperdiet, postea corrumpit voluptatum eum te.',
      userProfileUrl: 'assets/user-profile2.png',
      userName: 'Boss Mexl Mapags',
      datePosted: 'October 05, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/technology.png',
      headline: 'The Rise of Artificial Intelligence: Now and Beyond',
      description:
          'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. Sea ut nibh imperdiet, postea corrumpit voluptatum eum te.',
      userProfileUrl: 'assets/user-profile3.png',
      userName: 'Bibiluvs',
      datePosted: 'October 09, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/fashion.jpg',
      headline: 'The Best Places to Shop for Clothes Online',
      description:
          'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. Sea ut nibh imperdiet, postea corrumpit voluptatum eum te.',
      userProfileUrl: 'assets/user-profile4.png',
      userName: 'Boss Matskie',
      datePosted: 'October 15, 2023')
];
