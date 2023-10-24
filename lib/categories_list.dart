import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/featured_news.dart';
import 'app_styles.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
