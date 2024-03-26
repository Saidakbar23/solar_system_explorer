import 'package:flutter/material.dart';
import '../../../data/earth_data.dart';
import 'image_gallery.dart';
import 'location.dart';
import '../../../components/page sections/reusable_sections.dart';

class EarthPage extends StatefulWidget {
  static const String id = 'Earth Page';
  const EarthPage({super.key});

  @override
  State<EarthPage> createState() => _EarthPageState();
}

class _EarthPageState extends State<EarthPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(),
    Location(),
  ];

  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'object',
                child: Image.asset(
                  'images/earth_gallery/earth.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: Hero(
                tag: 'item name',
                child: Text(
                  'Earth',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Angora',
                  ),
                ),
              ),
              centerTitle: false,
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            backgroundColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
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
                    'images/earth_gallery/earth5.png',
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
                  sectionTitle: 'Size and Distance',
                  sectionContent: information[3],
                ),
                ContentSection(
                  sectionTitle: 'Orbit and Rotation',
                  sectionContent: information[4],
                ),
                ContentSection(
                  sectionTitle: 'Moons',
                  sectionContent: information[5],
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/earth_gallery/earth1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  sectionTitle: 'Formation',
                  sectionContent: information[6],
                ),
                ContentSection(
                  sectionTitle: 'Structure',
                  sectionContent: information[6],
                ),
                ContentSection(
                  sectionTitle: 'Surface',
                  sectionContent: information[8],
                ),
                ContentSection(
                  sectionTitle: 'Atmosphere',
                  sectionContent: information[9],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
