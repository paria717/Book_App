
import 'package:flutter/material.dart';

import 'colormanager.dart';

class Mylibrary extends StatefulWidget {
  const Mylibrary({super.key});

  @override
  State<Mylibrary> createState() => _MylibraryState();
}

class _MylibraryState extends State<Mylibrary> {
  @override
  Widget build(BuildContext context) {
    return 
        SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Column(
      children: [ Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: const EdgeInsets.only(left: 21),
                              child: Image.asset('images/Rectangle 2.png')),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Image.asset('images/Rectangle 4.png')),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Image.asset('images/Rectangle 5.png')),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: 15,
                                right: 0,
                                child: Center(
                                  child: Image.asset('images/Group 2904.png'),
                                ),
                              ),
                              const Positioned(
                                  top: 50,
                                  bottom: 0,
                                  left: 15,
                                  right: 0,
                                  child: Center(
                                    child: Text(
                                      'Discover More',
                                      style: TextStyle(
                                          color:Colormanager.navybluecolor,
                                          fontSize: 11),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ]),
    
            Row(mainAxisAlignment: MainAxisAlignment.start,
           
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only( top: 10,right: 50),
                      child: Text(
                        'Name of Book',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, ),
                          width: 84,
                          height: 4,
                          decoration: BoxDecoration(
                              color:Colormanager.navybluecolor,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 6,),
                          child: Text(
                            '100%',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 130, top: 10),
                      child: Text(
                        'Name of Book',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10, ),
                            width: 86,
                            height: 4,
                            decoration: BoxDecoration(
                                color:Colormanager.greycolor,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, ),
                            width: 56,
                            height: 4,
                            decoration: BoxDecoration(
                                color: Colormanager.navybluecolor,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ]),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 6),
                          child: Text(
                            '60%',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ), 
             
             
             ]
             )

    );
  }}