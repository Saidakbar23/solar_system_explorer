import 'package:flutter/material.dart';
import '../../../data/saturn_data.dart';
import '../../image_gallery.dart';
import '../../location.dart';
import '../../../components/page sections/reusable_sections.dart';

class SaturnPage extends StatefulWidget {
  static const String id = 'Saturn Page';
  const SaturnPage({super.key});

  @override
  State<SaturnPage> createState() => _SaturnPageState();
}

class _SaturnPageState extends State<SaturnPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(
      planet: 'saturn',
    ),
    Location(
      planet: 'saturn',
    ),
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
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'object',
                child: Image.asset(
                  'images/saturn.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: Hero(
                tag: 'item name',
                child: Text(
                  'Saturn',
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
                  planet: 'saturn',
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/saturn_gallery/saturn1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  sectionTitle: 'Namesake',
                  sectionContent: information[2],
                  planet: 'saturn',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
