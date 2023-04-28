import 'package:book_app/widget/colormanager.dart';
import 'package:book_app/widget/tabcontroller2.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            const SizedBox(width: 180),
            ElevatedButton.icon(
                icon: const Icon(Icons.add, size: 10),
                onPressed: () {},
                label: const Text('Add to Wishlist',
                    style: TextStyle(
                        color: Colormanager.whitecolor, fontSize: 10)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colormanager.navybluecolor,
                    minimumSize: const Size(15, 15),
                    padding: const EdgeInsets.all(7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 21,
            right: 21,
            bottom: 20,
          ),
          child: Image.asset('images/Rectangle 18.png'),
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('images/Ellipse 2.png'),
              radius: 25,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dust Jacket',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colormanager.navybluecolor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'By Pisco Pirinto',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    SizedBox(width: 10),
                    Icon(
                      Icons.star,
                      color: Colormanager.goldencolor,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colormanager.goldencolor,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colormanager.goldencolor,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colormanager.goldencolor,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colormanager.goldencolor,
                      size: 15.0,
                    ),
                    Text(
                      '|1.500 Reads',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colormanager.greycolor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 55),
              child: Text(
                '\$10.00',
                style: TextStyle(
                    fontSize: 20,
                    color: Colormanager.goldencolor,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: SizedBox(
              height: 250,
              width: double.infinity,
              child: Tabcontroller2(),
            ),
          ),
        ),
        // test(),
        ElevatedButton.icon(
             icon:  const ImageIcon(AssetImage('images/mdi_cart-variant1.png'),),
            onPressed: () {},
            label: const Text('Add to cart',
                style: TextStyle(color: Colormanager.whitecolor, fontSize: 10)),
             
            style: ElevatedButton.styleFrom(
                backgroundColor: Colormanager.goldencolor,
              
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)))
                     , 
    )],
    );
  }
}
