import 'package:book_app/widget/colormanager.dart';
import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override

  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int _currentIndex = 0;
  final List<String> _images = [
    "images/Rectangle 13.png",
    "images/Rectangle 13.png",
    "images/Rectangle 13.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 21,
              right: 21,
            ),
            child: PageView.builder(
              itemCount: _images.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Stack(children: [
                  Image.asset(
                    _images[index],
                  ),
                  // fit: BoxFit.cover,
                  // width: double.infinity,
                  // height: double.infinity,
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text('''           Find out the best books to read
           when you don't even know what
           to read!!!!''', style: TextStyle(color: Colormanager.whitecolor)),
                        Padding(
                          padding: const EdgeInsets.only(left: 37),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colormanager.whitecolor,
                                  minimumSize: const Size(15, 15),
                                  padding: const EdgeInsets.all(4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              child:  const Text('Explore',
                                  style:
                                 TextStyle(color: Colormanager.pinkcolor))),
                        ),
                      ]),
                ]);
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Transform.scale(
            scale: _currentIndex == 1 ? 1.2 : 1.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 7,
              width: 7,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicators(),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: _currentIndex == i ? 7 : 7,
        width: _currentIndex == i ? 54 : 7,
        decoration: BoxDecoration(
          color: _currentIndex == i
              ? Colormanager.goldencolor
              : Colormanager.greycolor.withOpacity(0.5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
      ));
    }
    return indicators;
  }
}
