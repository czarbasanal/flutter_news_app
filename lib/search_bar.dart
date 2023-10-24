import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: white,
        boxShadow: [
          BoxShadow(
            color: darkBlue.withOpacity(0.051),
            offset: const Offset(0.0, 3.0),
            blurRadius: 24.0,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: poppinsRegular.copyWith(
                color: blue,
                fontSize: 14.0,
              ),
              controller: TextEditingController(),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 13.0,
                ),
                hintText: 'Search for article',
                border: border,
                errorBorder: border,
                disabledBorder: border,
                focusedBorder: border,
                focusedErrorBorder: border,
                hintStyle: poppinsRegular.copyWith(
                  color: lightGrey,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: blue,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/search_icon.svg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
