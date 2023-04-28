
import 'package:book_app/widget/app_bar1.dart';
import 'package:book_app/widget/colormanager.dart';
import 'package:book_app/widget/my_library.dart';
import 'package:book_app/widget/my_wishlist.dart';
import 'package:flutter/material.dart';


class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: 40,
          width: double.infinity,
          child: const Appbar1(),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.only(left: 21, top: 20),
              child: const Text(
                'Hi Emily,',
                style: TextStyle(
                  color: Colormanager.navybluecolor,
                ),
              )),
          const Padding(
              padding: EdgeInsets.only(left: 21, top: 20),
              child: Text(
                'My Library',
                style:
                    TextStyle(fontSize: 25, color: Colormanager.navybluecolor),
              )),
          const SizedBox(
            height: 10,
          ),
          const Mylibrary(),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'My Wishlist',
                  style:
                      TextStyle(fontSize: 25, color: Colormanager.goldencolor),
                ),
              ),
              const SizedBox(width: 140),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(19, 19),
                    padding: const EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'See More',
                    style: TextStyle(
                        fontSize: 10, color: Colormanager.goldencolor),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            children: const [
              Mywishlist(
                  imagePath: 'images/Rectangle 3.png',
                  bookname: 'Good Company',
                  authorname: 'Cynthia D.S',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Mywishlist(
                  imagePath: 'images/Rectangle 1.png',
                  bookname: 'Book Lovers',
                  authorname: 'Emily Henry',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3:Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Mywishlist(
                  imagePath: 'images/Rectangle 7.png',
                  bookname: 'Leaving Time',
                  authorname: 'Jodi Picoult',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Mywishlist(
                  imagePath: 'images/Rectangle 6.png',
                  bookname: 'Silent Scream',
                  authorname: 'Angela Marsons',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Mywishlist(
                  imagePath: 'images/Rectangle 8.png',
                  bookname: 'The Kite Runner',
                  authorname: 'Khaled Hosseini',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
              Mywishlist(
                  imagePath: 'images/Rectangle 9.png',
                  bookname: 'Fathet of the Rain',
                  authorname: 'Lily King',
                  iconcolor1: Colormanager.goldencolor,
                  iconcolor2: Colormanager.goldencolor,
                  iconcolor3: Colormanager.goldencolor,
                  iconcolor4: Colormanager.goldencolor,
                  iconcolor5: Colormanager.greycolor),
            ],
          ),
        ]),
      ]),
    );
  }
}
