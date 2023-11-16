import 'package:flutter/material.dart';
import '../components/carousel_item.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  List<String> objects = [
    'sun',
    'mercury',
    'venus',
    'earth',
    'mars',
    'jupiter',
    'saturn',
    'uranus',
    'neptune'
  ];
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/stars.jpg',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: (int page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return CarouselItem(object: objects[index % 9]);
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 150,
              child: Column(
                children: [
                  Text(
                    objects[activePage % 9].toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Angora',
                      fontSize: 55.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(9, (indexDots) {
                      return Container(
                        width: activePage % 9 == indexDots % 9 ? 18 : 8,
                        height: 8,
                        margin: EdgeInsets.only(right: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: activePage % 9 == indexDots % 9
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
