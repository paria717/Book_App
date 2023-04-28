import 'package:book_app/screen1.dart';
import 'package:book_app/screen2.dart';
import 'package:book_app/screen3.dart';
import 'package:book_app/widget/colormanager.dart';

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 50,
            selectedItemColor: Colormanager.navybluecolor,
            unselectedItemColor: Colormanager.unselectedItemColor,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('images/ion_library.png'),
                activeIcon: Image.asset('images/ion_library2.png'),
                label: 'My Library',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/fluent_book-20-filled.png'),
                activeIcon: Image.asset('images/fluent_book-20-filled 1.png'),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/mdi_cart-variant.png'),
                activeIcon: Image.asset('images/mdi_cart-variant 3.png'),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon:
                    Image.asset('images/fluent_people-community-16-filled.png'),
                activeIcon: Image.asset(
                    'images/fluent_people-community-16-filled 4.png'),
                label: 'Community',
              ),
            ],
          )),
    );
  }
}
