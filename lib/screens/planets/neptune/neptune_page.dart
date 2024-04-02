import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../data/neptune_data.dart';
import '../../image_gallery.dart';
import '../../location.dart';
import '../../../components/page sections/reusable_sections.dart';

class NeptunePage extends StatefulWidget {
  static const String id = 'Neptune Page';
  const NeptunePage({super.key});

  @override
  State<NeptunePage> createState() => _NeptunePageState();
}

class _NeptunePageState extends State<NeptunePage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(
      planet: 'neptune',
    ),
    Location(
      planet: 'neptune',
    ),
  ];

  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPageIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black.withOpacity(0.1),
        surfaceTintColor: Colors.black54,
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
                  'images/neptune.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: Hero(
                tag: 'item name',
                child: AutoSizeText(
                  'Neptune',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontSize: 25.0,
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
                  numberOfMissions: missions[0],
                  timeline: 'Past',
                  planet: 'neptune',
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/neptune_gallery/neptune2.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  sectionTitle: 'Namesake',
                  sectionContent: information[2],
                  planet: 'neptune',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
