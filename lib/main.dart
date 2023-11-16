import 'package:flutter/material.dart';
import 'image_carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black54,
      ),
      home: ImageCarousel(),
    );
  }
}

// Builder(
// builder: (context) {
// final double height = MediaQuery.of(context).size.height;
// return CarouselSlider(
// options: CarouselOptions(
// height: height,
// viewportFraction: 0.9,
// enlargeCenterPage: false,
// ),
// items: [
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/sun1.png',
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/mercury1.png',
// alignment: Alignment.center,
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/venus1.png',
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/earth1.png',
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/mars1.png',
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/jupiter1.png',
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/saturn1.png',
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/uranus1.png',
// ),
// ),
// SizedBox(
// height: height,
// width: double.infinity,
// child: Image.asset(
// 'images/neptune1.png',
// ),
// ),
// ],
// );
// },
// ),
