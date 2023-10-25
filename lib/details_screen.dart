import 'package:flutter/material.dart';
import 'package:flutter_news_app/app_styles.dart';
import 'package:flutter_news_app/details_carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isExpanded = false;

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
                                    backgroundImage:
                                        AssetImage('assets/user-profile1.png'),
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
                                        'Kuya Josh Ojenroc',
                                        style: poppinsRegular.copyWith(
                                          color: grey,
                                          fontSize: small,
                                        ),
                                      ),
                                      Text(
                                        'May 17, 2023' '  •  ' '8 min read',
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
                              'Lorem ipsum dolor sit amet, quo solet eirmod in, virtute partiendo aliquando id nec. At eum amet omittam repudiare. Tollit partem eam ei, ad volutpat quaerendum per, ea qui malorum pertinax. An vis fuisset quaestio tincidunt, in nibh luptatum iracundia pri. Eam diam regione instructior et, te pro prompta moderatius, et odio iudico petentium duo. \n\nSea ut nibh imperdiet, postea corrumpit voluptatum eum te. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
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
      ),
    );
  }
}
