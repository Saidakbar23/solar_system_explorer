import 'package:flutter/material.dart';
import '../../../data/earth_data.dart';
import '../../location.dart';
import '../../../components/page sections/reusable_sections.dart';
import '../../image_gallery.dart';

class EarthPage extends StatefulWidget {
  static const String id = 'Earth Page';
  const EarthPage({super.key});

  @override
  State<EarthPage> createState() => _EarthPageState();
}

class _EarthPageState extends State<EarthPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(
      planet: 'earth',
    ),
    Location(
      planet: 'earth',
    ),
  ];

  int selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    Location(planet: 'earth');
    ImageGallery(planet: 'earth');
  }

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
            stretch: true,
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
                  style: Theme.of(context).textTheme.headline6!.copyWith(
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
                SizedBox(
                  height: 10,
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
                MissionsSection(
                  numberOfMissions: missions[1],
                  timeline: 'Past',
                  planet: 'earth',
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/earth_gallery/earth4.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  sectionTitle: 'Namesake',
                  sectionContent: information[2],
                  planet: 'earth',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
