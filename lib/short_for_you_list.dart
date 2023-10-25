import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/featured_news.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_styles.dart';

class ShortsListView extends StatelessWidget {
  const ShortsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for You',
                style: poppinsBold.copyWith(
                  fontSize: 20.0,
                ),
              ),
              Text(
                'View all',
                style: poppinsMedium.copyWith(
                  color: blue,
                  fontSize: 14.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: shortForYou.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal),
              itemBuilder: (context, index) {
                ShortForYou shortItem = shortForYou[index];

                return Container(
                  padding: const EdgeInsets.all(9),
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  width: 208,
                  height: 88,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(borderRadius),
                    boxShadow: [
                      BoxShadow(
                        color: darkBlue.withOpacity(0.08),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(borderRadius),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(shortItem.thumbnailUrl)),
                        ),
                        child: SvgPicture.asset(
                          'assets/play_icon.svg',
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              shortItem.heading,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: poppinsSemibold.copyWith(
                                  fontSize: medium, height: 1.20),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/eye_icon.svg',
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  shortItem.views,
                                  style: poppinsMedium.copyWith(
                                    color: grey,
                                    fontSize: small,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
