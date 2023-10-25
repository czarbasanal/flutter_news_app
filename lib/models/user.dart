import 'package:flutter_news_app/models/news.dart';

class User {
  final String profile;
  final String name;
  final String work;
  final String bio;
  final List<UserPost> posts;
  final String followers;
  final String following;

  const User({
    required this.profile,
    required this.name,
    required this.work,
    required this.bio,
    required this.posts,
    required this.followers,
    required this.following,
  });
}

class UserPost {
  final String photo;
  final String caption;
  final String details;
  final String datePosted;
  final String timePosted;
  final String readDuration;
  final String category;

  const UserPost({
    required this.photo,
    required this.caption,
    required this.details,
    required this.datePosted,
    required this.timePosted,
    required this.readDuration,
    required this.category,
  });
}

List<List<UserPost>> userPosts = [
  [
    UserPost(
        photo: images[0][0],
        caption: '7 Hidden Gems in the Philippines to Visit in 2023',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Sep 29, 2023',
        timePosted: '12:01 am',
        readDuration: '5 min read',
        category: 'Tourism')
  ],
  [
    UserPost(
        photo: images[1][0],
        caption: 'The Most Anticipated Concerts of 2023',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 05, 2023',
        timePosted: '08:15 pm',
        readDuration: '3 min read',
        category: 'Music')
  ],
  [
    UserPost(
        photo: images[2][0],
        caption: 'The Rise of Artificial Intelligence: Now and Beyond',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 09, 2023',
        timePosted: '11:11 pm',
        readDuration: '8 min read',
        category: 'Technology')
  ],
  [
    UserPost(
        photo: images[3][0],
        caption: 'The Best Places to Shop for Clothes Online',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 15, 2023',
        timePosted: '10:30 am',
        readDuration: '4 min read',
        category: 'Fashion')
  ]
];

var user = [
  User(
      profile: 'assets/user-profile1.png',
      name: 'Kuya Josh Ojenroc',
      work: 'Nature Lover',
      bio: '🌿 | Embracing the beauty of nature!',
      posts: userPosts[0],
      followers: '20.43K',
      following: '1.8K'),
  User(
      profile: 'assets/user-profile2.png',
      name: 'Tokemeki Mapags',
      work: 'Music Enthusiast',
      bio: '🎵 | Grooving to the rhythm of life!',
      posts: userPosts[1],
      followers: '69.69K',
      following: '5.02K'),
  User(
      profile: 'assets/user-profile3.png',
      name: 'Bibiluvs',
      work: 'TechBuddy',
      bio: '🔌 | Tech-savvy and ready to assist!',
      posts: userPosts[2],
      followers: '10M',
      following: '1'),
  User(
      profile: 'assets/user-profile4.png',
      name: 'Boss Matski',
      work: 'Estitik Guy',
      bio: '📷 | Capturing the world of beauty & aesthetics!',
      posts: userPosts[3],
      followers: '100K',
      following: '47.6K'),
];
