import 'package:flutter/material.dart';
import 'package:flutter_news_app/details_screen.dart';
import 'package:flutter_news_app/models/news.dart';
import 'package:flutter_news_app/models/user.dart';
import 'package:flutter_news_app/slide_transition.dart';
import 'package:flutter_news_app/user_profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_styles.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        shrinkWrap: true,
        itemCount: user.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          User featuredUser = user[index];
          var featuredNews = FeaturedNews(
            authorImg: featuredUser.profile,
            authorName: '${featuredUser.fname} ${featuredUser.lname}',
            newsImg: featuredUser.postsRef[0].image[0],
            newsHeadline: featuredUser.postsRef[0].caption,
            datePosted: featuredUser.postsRef[0].datePosted,
          );

          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(
              right: 20,
            ),
            height: 304,
            width: 255,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: white,
              boxShadow: [
                BoxShadow(
                  color: darkBlue.withOpacity(0.05),
                  offset: const Offset(0.0, 10.0),
                  blurRadius: 12.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 164,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(featuredNews.newsImg)),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(SlidePageRoute(
                      builder: (context) => DetailScreen(
                        selectedNews: featuredUser,
                        postRefIndex: 0,
                      ),
                    ));
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                Flexible(
                  child: Text(
                    featuredNews.newsHeadline,
                    style: poppinsBold.copyWith(fontSize: large, height: 1.20),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: CircleAvatar(
                              radius: 19,
                              backgroundColor: lightBlue,
                              backgroundImage:
                                  AssetImage(featuredNews.authorImg)),
                          onTap: () {
                            Navigator.of(context).push(SlidePageRoute(
                              builder: (context) =>
                                  UserProfileScreen(selectedUser: featuredUser),
                            ));
                          },
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              featuredNews.authorName,
                              style: poppinsSemibold.copyWith(
                                fontSize: small,
                              ),
                            ),
                            Text(
                              featuredNews.datePosted,
                              style: poppinsRegular.copyWith(
                                color: grey,
                                fontSize: xsmall,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadius),
                        color: lightWhite,
                      ),
                      child: SvgPicture.asset(
                        'assets/share_icon.svg',
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
