import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_styles.dart';

class AppNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const AppNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Center(
            child: widget.selectedIndex == 0
                ? SvgPicture.asset('assets/home_selected_icon.svg')
                : SvgPicture.asset('assets/home_unselected_icon.svg'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Center(
            child: widget.selectedIndex == 1
                ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Center(
            child: widget.selectedIndex == 2
                ? SvgPicture.asset('assets/notification_selected_icon.svg')
                : SvgPicture.asset('assets/notification_unselected_icon.svg'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Center(
            child: widget.selectedIndex == 3
                ? SvgPicture.asset('assets/profile_selected_icon.svg')
                : SvgPicture.asset('assets/profile_unselected_icon.svg'),
          ),
          label: '',
        ),
      ],
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
    );
  }
}
