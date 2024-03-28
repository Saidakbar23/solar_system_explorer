import 'package:flutter/material.dart';
import 'package:solar_system_explorer/firebase_options.dart';
import 'package:solar_system_explorer/screens/planets/earth/earth_page.dart';
import 'package:solar_system_explorer/screens/planets/jupiter/jupiter_page.dart';
import 'package:solar_system_explorer/screens/planets/mars/mars_page.dart';
import 'package:solar_system_explorer/screens/planets/mercury/mercury_page.dart';
import 'package:solar_system_explorer/screens/planets/neptune/neptune_page.dart';
import 'package:solar_system_explorer/screens/planets/saturn/saturn_page.dart';
import 'package:solar_system_explorer/screens/planets/sun/sun_page.dart';
import 'package:solar_system_explorer/screens/planets/uranus/uranus_page.dart';
import 'package:solar_system_explorer/screens/planets/venus/venus_page.dart';
import 'screens/image_carousel.dart';
import 'components/backend.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
