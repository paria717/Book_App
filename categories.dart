import 'package:book_app/widget/colormanager.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final String imagePath;
  final String bookname;
  final String authorname;
  final Color iconcolor1;
  final Color iconcolor2;
  final Color iconcolor3;
  final Color iconcolor4;
  final Color iconcolor5;
  final EdgeInsets margin;
  const Categories(
      {super.key,
      required this.imagePath,
      required this.bookname,
      required this.authorname,
      required this.iconcolor1,
      required this.iconcolor2,
      required this.iconcolor3,
      required this.iconcolor4,
      required this.iconcolor5, required this.margin, });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenwidth / 4,
      margin: widget.margin ,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(margin: const EdgeInsets.only(),child: Image.asset(widget.imagePath)),
            ),
      const SizedBox(height: 5),
            InkWell(
              onTap: () {},
              child: Text(
                widget.bookname,
                style: const TextStyle(
                    fontSize: 10,
                    color:Colormanager.navybluecolor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 3,),
              child: Text(
                widget.authorname,
                style: const TextStyle(
                    fontSize: 10,
                    color:Colormanager.greycolor,
                    fontWeight: FontWeight.bold),
              ),
            ),
           
            Row(
              children: [
               
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
        ),
      ),
    );
  }
}
