import 'package:book_app/widget/colormanager.dart';
import 'package:flutter/material.dart';

class Mywishlist extends StatefulWidget {
  final String imagePath;
  final String bookname;
  final String authorname;
  final Color iconcolor1;
  final Color iconcolor2;
  final Color iconcolor3;
  final Color iconcolor4;
  final Color iconcolor5;
  const Mywishlist(
      {super.key,
      required this.imagePath,
      required this.bookname,
      required this.authorname,
      required this.iconcolor1,
      required this.iconcolor2,
      required this.iconcolor3,
      required this.iconcolor4,
      required this.iconcolor5});

  @override
  State<Mywishlist> createState() => _MywishlistState();
  
}

class _MywishlistState extends State<Mywishlist> {
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;


    return Container( 
      width: screenwidth/2,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
                margin: const EdgeInsets.only(left: 21),
                child: Image.asset(widget.imagePath)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    widget.bookname,
                    style: const TextStyle(
                        fontSize: 10,
                        color:Colormanager.navybluecolor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 3),
                child: Text(
                  widget.authorname,
                  style: const TextStyle(
                      fontSize: 10,
                      color:Colormanager.unselectedItemColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width:10 ),
                  Icon(
                    Icons.star,
                    color: widget.iconcolor1,
                    size: 10.0,
                  ),
                  Icon(
                    Icons.star,
                    color: widget.iconcolor2,
                    size: 10.0,
                  ),
                  Icon(
                    Icons.star,
                    color: widget.iconcolor3,
                    size: 10.0,
                  ),
                  Icon(
                    Icons.star,
                    color: widget.iconcolor4,
                    size: 10.0,
                  ),
                  Icon(
                    Icons.star,
                    color: widget.iconcolor5,
                    size: 10.0,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
