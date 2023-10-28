import 'package:flutter/material.dart';
import 'package:flutter_news_app/app_styles.dart';
import 'package:flutter_news_app/models/user.dart';
import 'package:flutter_news_app/navigation_bar.dart';
import 'package:flutter_news_app/popular_posts_list.dart';
import 'package:flutter_news_app/user_posts_list.dart';

class UserProfileScreen extends StatefulWidget {
  final User selectedUser;

  const UserProfileScreen({super.key, required this.selectedUser});

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
                        child: Image.asset(
                          widget.selectedUser.profile,
                          fit: BoxFit.cover,
                        )),
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
                              '${widget.selectedUser.fname} '
                              '${widget.selectedUser.lname}',
                              style: poppinsBold.copyWith(
                                color: darkBlue,
                                fontSize: small,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              widget.selectedUser.work,
                              style: poppinsRegular.copyWith(
                                color: darkBlue,
                                fontSize: xsmall,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          constraints: const BoxConstraints(
                            maxHeight: 42,
                            maxWidth: 100.0,
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
                                fontSize: xsmall,
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
                widget.selectedUser.bio,
                style: poppinsMedium.copyWith(
                  color: grey,
                  fontSize: small,
                  height: 1.40,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: medium,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: small,
                  vertical: small,
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
                            widget.selectedUser.followers,
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
                            widget.selectedUser.posts,
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
                            widget.selectedUser.following,
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
                height: large,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${widget.selectedUser.fname}\'s Post',
                    style: poppinsBold.copyWith(
                      color: darkBlue,
                      fontSize: large,
                    ),
                  ),
                  Text(
                    'View All',
                    style: poppinsMedium.copyWith(
                      color: blue,
                      fontSize: xsmall,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: small,
              ),
              UserPostsListView(
                  userPost: widget.selectedUser.postsRef,
                  selectedUser: widget.selectedUser),
              const SizedBox(
                height: 6.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Popular From ${widget.selectedUser.fname}',
                    style: poppinsBold.copyWith(
                      color: darkBlue,
                      fontSize: large,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: small,
              ),
              PopularPostsListView(userPost: widget.selectedUser.postsRef)
            ]),
          ),
        ),
        bottomNavigationBar: AppNavigationBar(
            selectedIndex: selectedIndex, onItemTapped: onItemTapped),
      ),
    );
  }
}
