import 'package:flutter/material.dart';
import 'package:flutter_news_app/app_styles.dart';
import 'package:flutter_news_app/details_carousel_slider.dart';
import 'package:flutter_news_app/models/user.dart';
import 'package:flutter_news_app/navigation_bar.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatefulWidget {
  final User selectedNews;

  const DetailScreen({super.key, required this.selectedNews});

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  bool isExpanded = false;

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: lighterWhite,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  DetailsCarouselSlider(
                      featuredPostImages: widget.selectedNews.posts[0].image),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 30.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
                                border: Border.all(color: white),
                              ),
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                  'assets/arrow_back_icon.svg'),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                borderRadius,
                              ),
                              border: Border.all(
                                color: white,
                              ),
                            ),
                            padding: const EdgeInsets.all(14.0),
                            child: SvgPicture.asset(
                              'assets/bookmark_white_icon.svg',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 380.0,
                    child: Container(
                      height: maxHeight,
                      width: maxWidth,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: lighterWhite,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.selectedNews.posts[0].caption,
                              style: poppinsBold.copyWith(
                                color: darkBlue,
                                fontSize: 28.0,
                                height: 1.4,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                              ),
                              height: 64.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  borderRadius,
                                ),
                                border: Border.all(
                                  color: borderColor,
                                ),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: blue,
                                    backgroundImage:
                                        AssetImage(widget.selectedNews.profile),
                                  ),
                                  const SizedBox(
                                    width: 16.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.selectedNews.name,
                                        style: poppinsRegular.copyWith(
                                          color: grey,
                                          fontSize: small,
                                        ),
                                      ),
                                      Text(
                                        '${widget.selectedNews.posts[0].datePosted}  •  ${widget.selectedNews.posts[0].readDuration}',
                                        style: poppinsRegular.copyWith(
                                          color: grey,
                                          fontSize: xsmall,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Text(
                              widget.selectedNews.posts[0].details,
                              style: poppinsMedium.copyWith(
                                fontSize: isExpanded ? null : small,
                                color: darkBlue,
                              ),
                              maxLines: isExpanded ? null : 4,
                              overflow: isExpanded
                                  ? TextOverflow.clip
                                  : TextOverflow.ellipsis,
                            ),
                            if (!isExpanded)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpanded = true;
                                  });
                                },
                                child: const Text(
                                  'See More',
                                  style: TextStyle(
                                    color: blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            if (isExpanded)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpanded = false;
                                  });
                                },
                                child: const Text(
                                  'See Less',
                                  style: TextStyle(
                                    color: blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppNavigationBar(
          selectedIndex: selectedIndex,
          onItemTapped: onItemTapped,
        ),
      ),
    );
  }
}
