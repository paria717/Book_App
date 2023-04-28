import 'package:book_app/widget/colormanager.dart';
import 'package:flutter/material.dart';
class Tabcontroller extends StatefulWidget {
  const Tabcontroller({super.key});

  @override
  State<Tabcontroller> createState() => _TabcontrollerState();
}

class _TabcontrollerState extends State<Tabcontroller> {
   
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 6,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: TabBar(
          indicatorColor: Colormanager.goldencolor,
          labelColor: Colormanager.greycolor,
          labelStyle: TextStyle(fontSize: 12),
         
          isScrollable: true,
          tabs: [
            Tab(text: 'Arts'),
            Tab(text: 'Romance'),
            Tab(text: 'Biography'),
            Tab(text: 'Thriller'),
            Tab(text: 'Fiction'),
            Tab(text: 'Crime'),
          ],
        ),
      ),
    );
  }
}
