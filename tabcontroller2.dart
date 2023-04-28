import 'package:book_app/widget/colormanager.dart';

import 'package:flutter/material.dart';


class Tabcontroller2 extends StatefulWidget {
  const Tabcontroller2({super.key});

  @override
  State<Tabcontroller2> createState() => _TabcontrollerState();
}

class _TabcontrollerState extends State<Tabcontroller2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(34, 0, 34, 0),
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              body: Column(
                children: <Widget>[
                  
                  Stack(
                    children: [
                      Container(
                        height: 3,
                        margin: const EdgeInsets.fromLTRB(0, 46, 0, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colormanager.greycolor,
                        ),
                      ),
                      const TabBar(
                        indicatorColor: Colormanager.goldencolor,
                        labelColor:Colors.black,
                        tabs: [
                          Tab(text: 'About'),
                          Tab(text: 'Reviews'),
                          Tab(text: 'Author'),
                        ],
                      ),
                    ],
                  ),const SizedBox(height: 5,),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.'),
                        Text(
                            'Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.'),
                        Text(
                            'Lorem ipsum dolor sit amet consectetur. Faucibus tellus bibendum egestas dui facilisis vitae porttitor. Tristique est ipsum proin vestibulum lacus orci. Non ipsum sapien velit vitae magna quam. Cursus tempor nulla imperdiet tortor habitant arcu. Eu venenatis diam facilisis eu leo pellentesque quam ullamcorper malesuada. Facilisis diam mattis justo vel feugiat sagittis tortor urna. Arcu aliquam pellentesque lorem elit neque gravida. Bibendum bibendum feugiat facilisi viverra vitae tortor scelerisque facilisis orci.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
