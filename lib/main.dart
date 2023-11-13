import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;
            return CarouselSlider(
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
              ),
              items: [
                Container(
                  height: height,
                  color: Colors.red,
                ),
                Container(
                  height: height,
                  color: Colors.green,
                ),
                Container(
                  height: height,
                  color: Colors.blue,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
