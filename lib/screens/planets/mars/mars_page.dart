import 'package:flutter/material.dart';
import '../../../data/mars_data.dart';
import '../../image_gallery.dart';
import '../../location.dart';
import '../../../components/page sections/reusable_sections.dart';

class MarsPage extends StatefulWidget {
  static const String id = 'Mars Page';
  const MarsPage({super.key});

  @override
  State<MarsPage> createState() => _MarsPageState();
}

class _MarsPageState extends State<MarsPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(planet: 'mars'),
    Location(
      planet: 'mars',
    ),
  ];

  @override
  void initState() {
    super.initState();
    Location(planet: 'mars');
    ImageGallery(planet: 'mars');
  }

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
                  'images/mars.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: Hero(
                tag: 'item name',
                child: Text(
                  'Mars',
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
                  planet: 'mars',
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/mars_gallery/mars4.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  sectionTitle: 'Namesake',
                  sectionContent: information[2],
                  planet: 'mars',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
