import 'package:flutter/material.dart';
import 'package:flutter_news_app/app_styles.dart';
import 'package:flutter_news_app/details_screen.dart';
import 'package:flutter_news_app/models/user.dart';
import 'package:flutter_news_app/slide_transition.dart';
import 'package:flutter_svg/svg.dart';

class UserPostsListView extends StatelessWidget {
  final User selectedUser;
  final List<UserPost> userPost;

  const UserPostsListView(
      {super.key, required this.userPost, required this.selectedUser});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 238,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        itemCount: userPost.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
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
                      child: Image.asset(
                        userPost[index].image[0],
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
                          'News: ${userPost[index].category}',
                          style: poppinsRegular.copyWith(
                            color: grey,
                            fontSize: xsmall,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          userPost[index].caption,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: poppinsSemibold.copyWith(
                            color: darkBlue,
                            fontSize: small,
                            height: 1.20,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/calendar_icon.svg',
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  userPost[index].datePosted,
                                  style: poppinsRegular.copyWith(
                                    color: grey,
                                    fontSize: xsmall,
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
                                  width: 8.0,
                                ),
                                Text(
                                  userPost[index].timePosted,
                                  style: poppinsRegular.copyWith(
                                    color: grey,
                                    fontSize: xsmall,
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
            ),
            onTap: () {
              Navigator.of(context).push(SlidePageRoute(
                builder: (context) => DetailScreen(
                    selectedNews: selectedUser, postRefIndex: index),
              ));
            },
          );
        },
      ),
    );
  }
}
