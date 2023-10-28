import 'package:flutter/material.dart';
import 'package:flutter_news_app/app_styles.dart';
import 'package:flutter_news_app/models/user.dart';

class PopularPostsListView extends StatelessWidget {
  final List<UserPost> userPost;

  const PopularPostsListView({super.key, required this.userPost});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 143,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        itemCount: userPost.length,
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
              child: Image.asset(
                userPost[index].image[2],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
