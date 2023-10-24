import 'package:flutter/material.dart';
import 'package:flutter_news_app/search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_styles.dart';
import 'package:flutter_news_app/models/featured_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 56.0, 30.0, 30.0),
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: lightBlue,
                      image: const DecorationImage(
                        image: AssetImage('assets/main-user-profile.png'),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: poppinsBold.copyWith(
                        fontSize: medium,
                      ),
                    ),
                    Text(
                      'Monday, 31 October',
                      style: poppinsRegular.copyWith(
                        color: grey,
                        fontSize: small,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            const CustomSearchBar(),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 20.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 38,
                    ),
                    child: Text(
                      categories[index],
                      style: poppinsMedium.copyWith(
                        color: grey,
                        fontSize: 14.0,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
