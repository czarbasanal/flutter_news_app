import 'package:flutter/material.dart';
import 'package:flutter_news_app/app_styles.dart';
import 'package:flutter_news_app/models/user.dart';
import 'package:flutter_svg/svg.dart';

class UserProfileScreen extends StatefulWidget {
  //  final User userProfile;

  const UserProfileScreen({super.key});

  @override
  UserProfileScreenState createState() => UserProfileScreenState();
}

class UserProfileScreenState extends State<UserProfileScreen> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lighterWhite,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          child: SafeArea(
            child: Column(children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        borderRadius,
                      ),
                      child: Image.network(
                        'https://www.sketchappsources.com/resources/source-image/profile-illustration-gunaldi-yunus.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: small,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elly Byers',
                              style: poppinsBold.copyWith(
                                color: darkBlue,
                                fontSize: medium,
                              ),
                            ),
                            Text(
                              'Author & Writer',
                              style: poppinsRegular.copyWith(
                                color: darkBlue,
                                fontSize: small,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          constraints: const BoxConstraints(
                            maxHeight: 42,
                            maxWidth: 109.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              borderRadius,
                            ),
                            color: blue,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: poppinsMedium.copyWith(
                                color: white,
                                fontSize: small,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: medium,
              ),
              Text(
                'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
                style: poppinsMedium.copyWith(
                  color: grey,
                  fontSize: small,
                ),
              ),
              const SizedBox(
                height: medium,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: small,
                  vertical: medium,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    borderRadius,
                  ),
                  color: darkBlue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '54.21k',
                            style: poppinsBold.copyWith(
                              color: white,
                              fontSize: medium,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: poppinsMedium.copyWith(
                              color: white,
                              fontSize: small,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 38.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: lighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.11k',
                            style: poppinsBold.copyWith(
                              color: white,
                              fontSize: medium,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: poppinsMedium.copyWith(
                              color: white,
                              fontSize: small,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 38.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: lighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '36.40k',
                            style: poppinsBold.copyWith(
                              color: white,
                              fontSize: medium,
                            ),
                          ),
                          Text(
                            'Following',
                            style: poppinsMedium.copyWith(
                              color: white,
                              fontSize: small,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: medium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Elly\'s Post',
                    style: poppinsBold.copyWith(
                      color: darkBlue,
                      fontSize: medium,
                    ),
                  ),
                  Text(
                    'View All',
                    style: poppinsMedium.copyWith(
                      color: blue,
                      fontSize: small,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: small,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 105,
                      margin: const EdgeInsets.only(
                        bottom: small,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 105,
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(borderRadius),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                  offset: const Offset(0, 3),
                                  color: darkBlue.withOpacity(0.051),
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(borderRadius),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1365&q=80',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: small,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'News: Politics',
                                  style: poppinsRegular.copyWith(
                                    color: darkBlue,
                                    fontSize: small,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  'Iran\'s raging protests Fifth Iranian paramilitary me...',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: poppinsSemibold.copyWith(
                                    color: darkBlue,
                                    fontSize: small,
                                    height: 1.20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/calendar_icon.svg',
                                        ),
                                        const SizedBox(
                                          width: xsmall,
                                        ),
                                        Text(
                                          '16th May',
                                          style: poppinsRegular.copyWith(
                                            color: grey,
                                            fontSize: small,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/time_icon.svg',
                                        ),
                                        const SizedBox(
                                          width: xsmall,
                                        ),
                                        Text(
                                          '09 : 32 pm',
                                          style: poppinsRegular.copyWith(
                                            color: grey,
                                            fontSize: small,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: small,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Popular From Elly',
                    style: poppinsBold.copyWith(
                      color: darkBlue,
                      fontSize: medium,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: small,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.normal),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 143,
                      width: 248,
                      margin: const EdgeInsets.only(
                        right: small,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          borderRadius,
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3266&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
