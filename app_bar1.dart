import 'package:book_app/widget/colormanager.dart';
import 'package:flutter/material.dart';


class Appbar1 extends StatefulWidget {
  const Appbar1({
    super.key,
  });

  @override
  State<Appbar1> createState() => Appbar1State();
}

class Appbar1State extends State<Appbar1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: const EdgeInsets.only(left: 21, right: 15),
          onPressed: () {},
          icon: const ImageIcon(AssetImage('images/heroicons-solid_menu-alt-2.png'),
              color: Colors.black),
        ),
        SizedBox(
            height: 36,
            width: 190,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 246, 245, 250),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  suffixIcon: const ImageIcon(AssetImage('images/ri_search-line.png'),
                      color:Colormanager.greycolor),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            )),
        IconButton(
          // padding: EdgeInsets.only(right: 5),
          onPressed: () {},
          icon: const ImageIcon(AssetImage('images/fluent_scan-dash-28-filled.png'),
              color: Colors.black),
        ),
        IconButton(
          // padding: EdgeInsets.only(right: 5),
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage('images/mdi_bell-notification.png'),
          ),
        ),
      ],
    );
  }
}
