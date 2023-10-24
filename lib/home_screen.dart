import 'package:flutter/material.dart';
import 'package:flutter_news_app/categories_list.dart';
import 'package:flutter_news_app/featured_list.dart';
import 'package:flutter_news_app/search_bar.dart';

import 'app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 42.0, 30.0, 30.0),
            child: Column(
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
                const CategoriesListView(),
              ],
            ),
          ),
          const FeaturedListView()
        ],
      ),
    );
  }
}
