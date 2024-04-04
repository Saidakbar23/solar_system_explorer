import 'package:flutter/material.dart';
import '../../../data/mercury_data.dart';
import '../../image_gallery.dart';
import '../../location.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../../components/page sections/reusable_sections.dart';
import 'package:animations/animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MercuryPage extends StatefulWidget {
  const MercuryPage({super.key});

  @override
  State<MercuryPage> createState() => _MercuryPageState();
}

class _MercuryPageState extends State<MercuryPage> {
  final List<Widget> pages = [
    Content(),
    ImageGallery(planet: 'mercury'),
    Location(planet: 'mercury'),
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
                  'images/mercury.png',
                  fit: BoxFit.contain,
                ),
              ),
              title: Hero(
                tag: 'item name',
                child: AutoSizeText(
                  'Mercury',
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
                  planet: 'mercury',
                ),
                SizedBox(
                  height: 400.0,
                  child: Image.asset(
                    'images/mercury_gallery/mercury6.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ContentSection(
                  planet: 'mercury',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
