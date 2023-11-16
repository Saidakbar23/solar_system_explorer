import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/sun1.png',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/mercury1.png',
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/venus1.png',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/earth1.png',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/mars1.png',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/jupiter1.png',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/saturn1.png',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/uranus1.png',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'images/neptune1.png',
            ),
          ),
        ],
      ),
    );
  }
}
