import 'package:flutter/material.dart';
import 'package:solar_system_explorer/screens/planets/earth/earth_page.dart';
import 'package:solar_system_explorer/screens/planets/jupiter/jupiter_page.dart';
import 'package:solar_system_explorer/screens/planets/mars/mars_page.dart';
import 'package:solar_system_explorer/screens/planets/mercury/mercury_page.dart';
import 'package:solar_system_explorer/screens/planets/neptune/neptune_page.dart';
import 'package:solar_system_explorer/screens/planets/saturn/saturn_page.dart';
import 'package:solar_system_explorer/screens/planets/sun/sun_page.dart';
import 'package:solar_system_explorer/screens/planets/uranus/uranus_page.dart';
import 'package:solar_system_explorer/screens/planets/venus/venus_page.dart';
import '../components/carousel components/carousel_item.dart';
import '../components/carousel components/carousel_item_name.dart';
import '../components/carousel components/carousel_page_tracker.dart';
import '../components/animation/swipe_up_animation.dart';
import 'additional_features.dart';

class ImageCarousel extends StatefulWidget {
  static const String id = 'Home Screen';
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

  List pages = [
    SunPage(),
    MercuryPage(),
    VenusPage(),
    EarthPage(),
    MarsPage(),
    JupiterPage(),
    SaturnPage(),
    UranusPage(),
    NeptunePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (dragUpdateDetails) {
          Navigator.push(
            context,
            SwipeUpAnimation(page: pages[activePage % 9]),
          );
        },
        child: Container(
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
          child: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdditionalFeatures()));
                    },
                    child: Icon(
                      Icons.list_rounded,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      PageView.builder(
                        onPageChanged: (int page) {
                          setState(() {
                            activePage = page;
                          });
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Hero(
                            tag: 'object',
                            child: CarouselItem(
                              object: objects[index % 9],
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: 200,
                        child: Column(
                          children: [
                            Hero(
                              tag: 'item name',
                              child: CarouselItemName(
                                object: objects[activePage % 9],
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            CarouselPageTracker(activePage: activePage),
                            SizedBox(
                              height: 15.0,
                            ),
                            Icon(
                              Icons.arrow_downward_rounded,
                              size: 30.0,
                              weight: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
