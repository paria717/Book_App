import 'package:book_app/widget/app_bar1.dart';
import 'package:book_app/widget/categories.dart';
import 'package:book_app/widget/colormanager.dart';
import 'package:book_app/widget/myslider.dart';
import 'package:book_app/widget/tabcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: const EdgeInsets.only(top: 5),
        height: 40,
        width: double.infinity,
        child: const Appbar1(),
      ),
      Stack(
        children: const [
          MySlider(),
        ],
      ),
      const Padding(
          padding: EdgeInsets.only(left: 21, top: 20),
          child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 20,
              color: Colormanager.navybluecolor,
              fontWeight: FontWeight.bold,
            ),
          )),
      const Tabcontroller(),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Wrap(
            children: const [
              Categories(
                  margin: EdgeInsets.only(top: 10, left: 25),
                  imagePath: 'images/Rectangle 19.png',
                  bookname: 'The Story of Marie Curie ',
                  authorname: 'Susan R Katy',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Categories(
                  margin: EdgeInsets.only(top: 10, left: 22),
                  imagePath: 'images/Rectangle 20.png',
                  bookname: 'At Home with Mohammed Ali',
                  authorname: 'Hana Alli',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Categories(
                  margin: EdgeInsets.only(top: 10, left: 22),
                  imagePath: 'images/Rectangle 21.png',
                  bookname: 'Malcolm X',
                  authorname: 'Alex Haley',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Categories(
                  margin: EdgeInsets.only(top: 10, left: 25),
                  imagePath: 'images/Rectangle 22.png',
                  bookname: 'Becoming Michelle Obama',
                  authorname: 'Michelle Obama',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Categories(
                  margin: EdgeInsets.only(top: 10, left: 22),
                  imagePath: 'images/Rectangle 23.png',
                  bookname: 'The Story pf Walt Disney',
                  authorname: 'Susan B Katz',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Categories(
                  margin: EdgeInsets.only(top: 10, left: 22),
                  imagePath: 'images/Rectangle 24.png',
                  bookname: 'The Happiest Man on Earth',
                  authorname: 'Author Name',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
            ],
          ),
        ),
      )
    ]);
  }
}
