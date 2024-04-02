import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../data/venus_data.dart';
import '../../location.dart';
import '../../../components/page sections/reusable_sections.dart';
import '../../image_gallery.dart';

class VenusPage extends StatefulWidget {
  static const String id = 'Venus Page';
  const VenusPage({super.key});

  @override
  State<VenusPage> createState() => _VenusPageState();
}

class _VenusPageState extends State<VenusPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(planet: 'venus'),
    Location(
      planet: 'venus',
    ),
  ];

  int selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    ImageGallery(planet: 'venus');
    Location(planet: 'venus');
  }

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
                  'images/venus.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: Hero(
                tag: 'item name',
                child: AutoSizeText(
                  'Venus',
                  textAlign: TextAlign.center,
                  maxLines: 1,
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
                  planet: 'venus',
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/venus_gallery/venus3.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  sectionTitle: 'Namesake',
                  sectionContent: information[2],
                  planet: 'venus',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
