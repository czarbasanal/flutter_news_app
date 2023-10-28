class User {
  final String profile;
  final String fname;
  final String lname;
  final String work;
  final String bio;
  final List<UserPost> postsRef;
  final String posts;
  final String followers;
  final String following;

  const User({
    required this.profile,
    required this.fname,
    required this.lname,
    required this.work,
    required this.bio,
    required this.postsRef,
    required this.posts,
    required this.followers,
    required this.following,
  });
}

class UserPost {
  final List<String> image;
  final String caption;
  final String details;
  final String datePosted;
  final String timePosted;
  final String readDuration;
  final String category;

  const UserPost({
    required this.image,
    required this.caption,
    required this.details,
    required this.datePosted,
    required this.timePosted,
    required this.readDuration,
    required this.category,
  });
}

List<List<String>> postImages = [
  //Kuya Josh Ojenroc post images
  ['assets/tourism.png', 'assets/tourism-1.png', 'assets/tourism-2.png'],
  [
    'assets/self-driving-car-1.png',
    'assets/self-driving-car-2.png',
    'assets/self-driving-car-3.png'
  ],
  [
    'assets/cancer-treatment-1.png',
    'assets/cancer-treatment-2.png',
    'assets/cancer-treatment-3.png'
  ],

  //Tokemeki Mapags post images
  ['assets/music.png', 'assets/music-1.png', 'assets/music-2.png'],
  ['assets/messi-1.png', 'assets/messi-2.png', 'assets/messi-3.png'],
  [
    'assets/michelin-starred-chef-1.png',
    'assets/michelin-starred-chef-2.png',
    'assets/michelin-starred-chef-3.png'
  ],

  //Bibiluv post images
  [
    'assets/technology.png',
    'assets/technology-1.png',
    'assets/technology-2.png'
  ],
  [
    'assets/meditation-1.png',
    'assets/meditation-2.png',
    'assets/meditation-3.png'
  ],
  ['assets/solar-1.png', 'assets/solar-2.png', 'assets/solar-3.png'],

  //Bosseng Matski post images
  ['assets/fashion.jpg', 'assets/fashion-1.png', 'assets/fashion-2.png'],
  ['assets/vr-1.png', 'assets/vr-2.png', 'assets/vr-3.png'],
  ['assets/spacex-1.png', 'assets/spacex-2.png', 'assets/spacex-3.png']
];

List<List<UserPost>> userPosts = [
  //Kuya Josh Ojenroc Posts
  [
    UserPost(
        image: postImages[0],
        caption: '7 Hidden Gems in the Philippines to Visit in 2023',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Sep 29, 2023',
        timePosted: '12 : 01 am',
        readDuration: '5 min read',
        category: 'Travel'),
    UserPost(
        image: postImages[1],
        caption: 'Self-Driving Cars Are Finally Here: What You Need to Know',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Aug 30, 2023',
        timePosted: '03 : 30 pm',
        readDuration: '6 min read',
        category: 'Technology'),
    UserPost(
        image: postImages[2],
        caption:
            'New Breakthrough in Cancer Treatment Shows Promise in Early Trials',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Jul 19, 2023',
        timePosted: '09 : 07 pm',
        readDuration: '10 min read',
        category: 'Health')
  ],

  //Tokemeki Mapags Posts
  [
    UserPost(
        image: postImages[3],
        caption: 'The Most Anticipated Concerts of 2023',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 05, 2023',
        timePosted: '08 : 15 pm',
        readDuration: '3 min read',
        category: 'Music'),
    UserPost(
        image: postImages[4],
        caption:
            'Lionel Messi Wins Eighth Ballon d\'Or Award, Breaking Record for Most Wins',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 02, 2023',
        timePosted: '10 : 30 pm',
        readDuration: '5 min read',
        category: 'Sports'),
    UserPost(
        image: postImages[5],
        caption: 'Michelin-Starred Chef Opens New Restaurant in New York City',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Sep 09, 2023',
        timePosted: '06 : 30 pm',
        readDuration: '15 min read',
        category: 'Food')
  ],

  //Bibiluv Posts
  [
    UserPost(
        image: postImages[6],
        caption: 'The Rise of Artificial Intelligence: Now and Beyond',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 09, 2023',
        timePosted: '11 : 11 pm',
        readDuration: '8 min read',
        category: 'Technology'),
    UserPost(
        image: postImages[7],
        caption: 'How to Start a Meditation Practice: A Beginner\'s Guide',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 15, 2023',
        timePosted: '07 : 11 pm',
        readDuration: '5 min read',
        category: 'Lifestyle'),
    UserPost(
        image: postImages[8],
        caption:
            'Global Solar Power Capacity Surpasses 1 Terawatt for the First Time',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 21, 2023',
        timePosted: '05 : 15 pm',
        readDuration: '8 min read',
        category: 'Environment')
  ],

  //Bosseng Matski Posts
  [
    UserPost(
        image: postImages[9],
        caption: 'The Best Places to Shop for Clothes Online',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Oct 15, 2023',
        timePosted: '10 : 30 am',
        readDuration: '4 min read',
        category: 'Fashion'),
    UserPost(
        image: postImages[10],
        caption: 'VR Gaming is About to Get Even More Realistic',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Aug 15, 2023',
        timePosted: '08 : 07 am',
        readDuration: '6 min read',
        category: 'Technology'),
    UserPost(
        image: postImages[11],
        caption: 'SpaceX Launches First Commercial Flight to Mars',
        details:
            'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
        datePosted: 'Aug 15, 2023',
        timePosted: '04 : 30 pm',
        readDuration: '8 min read',
        category: 'Business')
  ]
];

var user = [
  User(
      profile: 'assets/user-profile1.png',
      fname: 'Kuya Josh',
      lname: 'Ojenroc',
      work: 'Nature Lover',
      bio: '🌿 | Embracing the beauty of nature | Let\'s explore the outdoors!',
      postsRef: userPosts[0],
      posts: '2.11K',
      followers: '20.43K',
      following: '1.8K'),
  User(
      profile: 'assets/user-profile2.png',
      fname: 'Tokemeki',
      lname: 'Mapags',
      work: 'Melomaniac',
      bio: '🎵 | Grooving to the rhythm of life | Sharing musical vibes',
      postsRef: userPosts[1],
      posts: '1.09K',
      followers: '69.69K',
      following: '5.02K'),
  User(
      profile: 'assets/user-profile3.png',
      fname: 'Bibiluv',
      lname: '',
      work: 'TechBuddy',
      bio:
          '🔌 | Tech-savvy and ready to assist | Let\'s dive into the digital realm!',
      postsRef: userPosts[2],
      posts: '5.4K',
      followers: '10M',
      following: '1'),
  User(
      profile: 'assets/user-profile4.png',
      fname: 'Bosseng',
      lname: 'Matski',
      work: 'Estitik Guy',
      bio: '📷 | Capturing the world\'s beauty | Exploring aesthetics!',
      postsRef: userPosts[3],
      posts: '8.69K',
      followers: '100K',
      following: '47.6K'),
];
