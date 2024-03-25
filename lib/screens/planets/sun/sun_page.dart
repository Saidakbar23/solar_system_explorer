import 'package:flutter/material.dart';
import 'package:solar_system_explorer/screens/planets/sun/location.dart';
import '../../../data/sun_data.dart';
import 'image_gallery.dart';
import '../../../components/page sections/reusable_sections.dart';

class SunPage extends StatefulWidget {
  static const String id = 'Sun Page';
  const SunPage({super.key});

  @override
  State<SunPage> createState() => _SunPageState();
}

class _SunPageState extends State<SunPage> {
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
            'The Sun',
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
            height: 300.0,
            child: Image.asset(
              'images/sun.png',
            ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MissionsSection(
                numberOfMissions: missions[0],
                timeline: 'Active',
              ),
              MissionsSection(
                numberOfMissions: missions[1],
                timeline: 'Upcoming',
              ),
            ],
          ),
          ContentSection(
            sectionTitle: 'Namesake',
            sectionContent: information[2],
          ),
          ContentSection(
            sectionTitle: 'Potential for Life',
            sectionContent: information[3],
          ),
          ContentSection(
            sectionTitle: 'Size and Distance',
            sectionContent: information[4],
          ),
          ContentSection(
            sectionTitle: 'Orbit and Rotation',
            sectionContent: information[5],
          ),
          SizedBox(
            height: 400.0,
            child: Image.asset(
              'images/sun_gallery/sun.png',
              fit: BoxFit.cover,
            ),
          ),
          ContentSection(
            sectionTitle: 'Formation',
            sectionContent: information[6],
          ),
        ],
      ),
    );
  }
}
