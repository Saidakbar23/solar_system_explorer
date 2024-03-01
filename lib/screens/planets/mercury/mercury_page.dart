import 'package:flutter/material.dart';
import '../../../data/mercury_data.dart';
import 'image_gallery.dart';
import 'location.dart';

class MercuryPage extends StatefulWidget {
  static const String id = 'Mercury Page';
  const MercuryPage({super.key});

  @override
  State<MercuryPage> createState() => _MercuryPageState();
}

class _MercuryPageState extends State<MercuryPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(),
    Location(),
  ];

  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        selectedIndex: selectedPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.image_sharp),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.view_timeline),
            label: '',
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          Text(
            'Mercury',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50.0,
              fontFamily: 'Angora',
            ),
          ),
          Text(
            information[0],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300.0,
            child: Image.asset(
              'images/mercury.png',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            information[1],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    missions[0],
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.lightBlue,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Active \nMissions',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    missions[1],
                    style: TextStyle(
                      fontSize: 70,
                      color: Colors.lightBlue,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Past \nMissions',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Namesake',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[2],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Potential for Life',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[3],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Size and Distance',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[4],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Orbit and Rotation',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[5],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 400.0,
            child: Image.asset(
              'images/mercury_gallery/mercury6.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Formation',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[6],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Surface',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[7],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}
