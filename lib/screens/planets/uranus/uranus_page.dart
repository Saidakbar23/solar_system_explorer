import 'package:flutter/material.dart';
import '../../../data/uranus_data.dart';
import 'image_gallery.dart';
import 'location.dart';

class UranusPage extends StatefulWidget {
  static const String id = 'Uranus Page';
  const UranusPage({super.key});

  @override
  State<UranusPage> createState() => _UranusPageState();
}

class _UranusPageState extends State<UranusPage> {
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
        destinations: [
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
            'Uranus',
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
              'images/uranus.png',
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
              'images/uranus.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Moons',
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
            'Rings',
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
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Structure',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[8],
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
            information[9],
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Atmosphere',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            information[10],
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
