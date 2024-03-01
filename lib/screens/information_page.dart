import 'package:flutter/material.dart';
import 'planets/sun/image_gallery.dart';
import 'planets/sun/sun_page.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key, required this.planet});

  final int planet;

  @override
  State<InformationPage> createState() => _SunPageState();
}

class _SunPageState extends State<InformationPage> {
  late int planetSelected;

  @override
  void initState() {
    super.initState();
  }

  final List objects = [
    SunPage.id,
  ];

  final List<Widget> pages = [
    ImageGallery(),
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
