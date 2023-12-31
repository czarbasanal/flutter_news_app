import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class DetailsCarouselSlider extends StatefulWidget {
  final List<String> featuredPostImages;

  const DetailsCarouselSlider({super.key, required this.featuredPostImages});

  @override
  State<DetailsCarouselSlider> createState() => DetailsCarouselSliderState();
}

class DetailsCarouselSliderState extends State<DetailsCarouselSlider> {
  int current = 0;
  final CarouselController sliderController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        CarouselSlider(
          carouselController: sliderController,
          options: CarouselOptions(
              height: 1000.0,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              },
              initialPage: current,
              autoPlay: true,
              scrollPhysics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal)),
          items: widget.featuredPostImages
              .map(
                (item) => Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    height: 420.0,
                    width: maxWidth,
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          top: 320.0,
          left: (maxWidth / 2) - 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.featuredPostImages
                .asMap()
                .entries
                .map(
                  (entry) => GestureDetector(
                    onTap: () => sliderController.animateToPage(entry.key),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      child: SvgPicture.asset(
                        current == entry.key
                            ? 'assets/carousel_indicator_enabled.svg'
                            : 'assets/carousel_indicator_disabled.svg',
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
