import 'package:flutter/material.dart';
import 'package:solar_system_explorer/screens/planets/earth_page.dart';
import 'package:solar_system_explorer/screens/planets/jupiter_page.dart';
import 'package:solar_system_explorer/screens/planets/mars_page.dart';
import 'package:solar_system_explorer/screens/planets/mercury_page.dart';
import 'package:solar_system_explorer/screens/planets/neptune_page.dart';
import 'package:solar_system_explorer/screens/planets/saturn_page.dart';
import 'package:solar_system_explorer/screens/planets/sun/sun_page.dart';
import 'package:solar_system_explorer/screens/planets/uranus_page.dart';
import 'package:solar_system_explorer/screens/planets/venus_page.dart';
import 'screens/image_carousel.dart';

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
      routes: {
        ImageCarousel.id: (context) => ImageCarousel(),
        SunPage.id: (context) => SunPage(),
        MercuryPage.id: (context) => MercuryPage(),
        VenusPage.id: (context) => VenusPage(),
        EarthPage.id: (context) => EarthPage(),
        MarsPage.id: (context) => MarsPage(),
        JupiterPage.id: (context) => JupiterPage(),
        SaturnPage.id: (context) => SaturnPage(),
        UranusPage.id: (context) => UranusPage(),
        NeptunePage.id: (context) => NeptunePage(),
      },
    );
  }
}
