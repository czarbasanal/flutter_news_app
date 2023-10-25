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
                          color: grey,
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 40.0,
                    //       vertical: 60,
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(
                    //               borderRadius,
                    //             ),
                    //             border: Border.all(
                    //               color: white,
                    //             ),
                    //           ),
                    //           padding: const EdgeInsets.all(12),
                    //           child: SvgPicture.asset(
                    //             'assets/arrow_back_icon.svg',
                    //           ),
                    //         ),
                    //         Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(
                    //               borderRadius,
                    //             ),
                    //             border: Border.all(
                    //               color: white,
                    //             ),
                    //           ),
                    //           padding: const EdgeInsets.all(12),
                    //           child: SvgPicture.asset(
                    //             'assets/bookmark_white_icon.svg',
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
