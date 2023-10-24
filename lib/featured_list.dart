import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/featured_news.dart';
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
        itemCount: featuredNews.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          FeaturedNews featuredItem = featuredNews[index];

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
                Container(
                  height: 164,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(featuredItem.featuredImg)),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Flexible(
                  child: Text(
                    featuredItem.headline,
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
                        CircleAvatar(
                            radius: 19,
                            backgroundColor: lightBlue,
                            backgroundImage:
                                AssetImage(featuredItem.userProfileUrl)),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              featuredItem.userName,
                              style: poppinsSemibold.copyWith(
                                fontSize: small,
                              ),
                            ),
                            Text(
                              featuredItem.datePosted,
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
