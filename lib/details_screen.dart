import 'package:flutter/material.dart';
import 'package:flutter_news_app/app_styles.dart';
import 'package:flutter_news_app/details_carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

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
                    const DetailsCarouselSlider(),
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
                                'assets/arrow_back_icon.svg',
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
                                'Unravel mysteries of the Maldives',
                                style: poppinsBold.copyWith(
                                  color: darkBlue,
                                  fontSize: 28.0,
                                  height: 1.4,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
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
                                    const CircleAvatar(
                                      radius: 20,
                                      backgroundColor: blue,
                                    ),
                                    const SizedBox(
                                      width: 16.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Kuya Josh Ojenroc',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: poppinsRegular.copyWith(
                                            color: grey,
                                            fontSize: small,
                                          ),
                                        ),
                                        Text(
                                          'May 17, 2023' '  •  ' '8 min read',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
