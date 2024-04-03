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
import 'apod.dart';

class AdditionalFeatures extends StatelessWidget {
  static const String id = 'Additional Features';
  const AdditionalFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/stars.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 50.0),
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 20.0),
                child: GridView.count(
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 3,
                  children: List.generate(9, (index) {
                    return Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pages[index],
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'images/${objects[index]}.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return APOD();
                  }));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.withOpacity(0.7)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  ),
                ),
                child: Text(
                  'Astronomy Picture of the Day',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
