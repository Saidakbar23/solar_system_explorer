import 'package:flutter/material.dart';
import '../data/sun_data.dart';
import 'image_gallery.dart';

class SunPage extends StatefulWidget {
  const SunPage({super.key, required this.planet});

  final String planet;

  @override
  State<SunPage> createState() => _SunPageState();
}

class _SunPageState extends State<SunPage> {
  late String planetSelected;

  @override
  void initState() {
    super.initState();
    planetSelected = widget.planet;
  }

  final List<Widget> pages = [
    PageContent(),
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
        destinations: [
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

class PageContent extends StatelessWidget {
  const PageContent({super.key, this.planet});

  final String? planet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragDown: (DragDownDetails) {
        Navigator.pop(context);
      },
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(
                    'images/sun.png',
                    scale: 3.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Text(
                        'CENTER OF OUR SOLAR SYSTEM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Sun',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'Angora',
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Text(
                        '4.5 billion years old'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      facts[0],
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
