import 'package:flutter/material.dart';
import '../components/carousel components/carousel_item.dart';
import '../components/carousel components/carousel_item_name.dart';
import '../components/carousel components/carousel_page_tracker.dart';

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
        alignment: Alignment.bottomLeft,
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
                  CarouselItemName(object: objects[activePage % 9]),
                  CarouselPageTracker(activePage: activePage),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
