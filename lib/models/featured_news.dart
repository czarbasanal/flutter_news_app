class FeaturedNews {
  final String featuredImg;
  final String headline;
  final String userProfileUrl;
  final String userName;
  final String datePosted;

  const FeaturedNews({
    required this.featuredImg,
    required this.headline,
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
      userProfileUrl: 'assets/user-profile1.png',
      userName: 'Kuya Josh Ojenroc',
      datePosted: 'September 29, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/music.png',
      headline: 'The Most Anticipated Concerts of 2023',
      userProfileUrl: 'assets/user-profile2.png',
      userName: 'Boss Mexl Mapags',
      datePosted: 'October 05, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/technology.png',
      headline: 'The Rise of Artificial Intelligence: Now and Beyond',
      userProfileUrl: 'assets/user-profile3.png',
      userName: 'Bibiluvs',
      datePosted: 'October 09, 2023'),
  const FeaturedNews(
      featuredImg: 'assets/fashion.png',
      headline: 'The Best Places to Shop for Clothes Online',
      userProfileUrl: 'assets/user-profile4.png',
      userName: 'Boss Matskie',
      datePosted: 'October 15, 2023')
];
