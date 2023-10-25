import 'package:flutter/material.dart';
import 'app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_screen.dart';
import 'details_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: lighterWhite,
        body: const DetailScreen(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Center(
                child: _selectedIndex == 0
                    ? SvgPicture.asset('assets/home_selected_icon.svg')
                    : SvgPicture.asset('assets/home_unselected_icon.svg'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Center(
                child: _selectedIndex == 1
                    ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                    : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Center(
                child: _selectedIndex == 2
                    ? SvgPicture.asset('assets/notification_selected_icon.svg')
                    : SvgPicture.asset(
                        'assets/notification_unselected_icon.svg'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Center(
                child: _selectedIndex == 3
                    ? SvgPicture.asset('assets/profile_selected_icon.svg')
                    : SvgPicture.asset('assets/profile_unselected_icon.svg'),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
