import 'package:flutter/material.dart';
import '../../../data/mercury_data.dart';
import 'image_gallery.dart';
import 'location.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../../components/page sections/reusable_sections.dart';

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
          AutoSizeText(
            'Mercury',
            textAlign: TextAlign.center,
            maxLines: 1,
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
              MissionsSection(
                numberOfMissions: missions[0],
                timeline: 'Active',
              ),
              MissionsSection(
                numberOfMissions: missions[1],
                timeline: 'Past',
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
              'images/mercury_gallery/mercury6.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          ContentSection(
            sectionTitle: 'Formation',
            sectionContent: information[6],
          ),
          ContentSection(
            sectionTitle: 'Surface',
            sectionContent: information[7],
          ),
        ],
      ),
    );
  }
}
