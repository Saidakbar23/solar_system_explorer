import 'package:flutter/material.dart';
import '../../../data/venus_data.dart';
import 'image_gallery.dart';
import 'location.dart';
import '../../../components/page sections/reusable_sections.dart';

class VenusPage extends StatefulWidget {
  static const String id = 'Venus Page';
  const VenusPage({super.key});

  @override
  State<VenusPage> createState() => _VenusPageState();
}

class _VenusPageState extends State<VenusPage> {
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
            'Venus',
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
              'images/venus.png',
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
              MissionsSection(
                numberOfMissions: missions[0],
                timeline: 'Upcoming',
              ),
              MissionsSection(
                numberOfMissions: missions[1],
                timeline: 'Past',
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
              images[1],
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
            information[8],
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
