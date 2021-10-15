import 'package:book_app/views/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBookApp extends StatefulWidget {
  @override
  _BottomNavigationBookAppState createState() =>
      _BottomNavigationBookAppState();
}

class _BottomNavigationBookAppState extends State<BottomNavigationBookApp> {
  // membuat variable untuk menangani perubahan warna saat icon ditab/tidak
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 5),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        items: [
          // Bottom nav untuk Home
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset('assets/icons/icon_home_grey.svg'),
            ),
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset('assets/icons/icon_home_colored.svg'),
            ),
            label: 'Home',
          ),

          // Bottom nav untuk Bookmark
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset('assets/icons/icon_bookmark_grey.svg'),
            ),
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset('assets/icons/icon_bookmark_colored.svg'),
            ),
            label: 'Bookmark',
          ),

          // Bottom nav untuk User
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset('assets/icons/icon_user_grey.svg'),
            ),
            activeIcon: Container(
              padding: EdgeInsets.only(bottom: 3),
              child: SvgPicture.asset('assets/icons/icon_user_colored.svg'),
            ),
            label: 'User',
          ),
        ],
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,
        elevation: 0,
        selectedItemColor: kMainColor,
        unselectedItemColor: kGreyColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
      ),
    );
  }
}
