import 'package:flutter/material.dart';
import '../../../data/uranus_data.dart';
import '../../image_gallery.dart';
import '../../location.dart';
import '../../../components/page sections/reusable_sections.dart';
import 'package:animations/animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UranusPage extends StatefulWidget {
  const UranusPage({super.key});

  @override
  State<UranusPage> createState() => _UranusPageState();
}

class _UranusPageState extends State<UranusPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(planet: 'uranus'),
    Location(planet: 'uranus'),
  ];

  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            fillColor: Colors.black,
            child: child,
          );
        },
        child: pages[selectedPageIndex],
      ),
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
            selectedIcon: FaIcon(
              FontAwesomeIcons.globe,
              color: Colors.lightBlue,
            ),
            icon: IconButton(
              onPressed: null,
              icon: FaIcon(
                FontAwesomeIcons.globe,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.cameraRetro,
              color: Colors.lightBlue,
            ),
            icon: IconButton(
              onPressed: null,
              icon: FaIcon(
                FontAwesomeIcons.cameraRetro,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.unity,
              color: Colors.lightBlue,
            ),
            icon: IconButton(
              onPressed: null,
              icon: FaIcon(
                FontAwesomeIcons.unity,
                color: Colors.white,
              ),
            ),
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
                  'images/uranus.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: Hero(
                tag: 'item name',
                child: Text(
                  'Uranus',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 30.0,
                        fontFamily: 'Angora',
                      ),
                ),
              ),
              centerTitle: false,
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_upward_rounded,
                size: 30.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
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
                  planet: 'uranus',
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/uranus_gallery/uranus2.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  planet: 'uranus',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
