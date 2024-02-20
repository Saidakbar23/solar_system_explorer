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

  // final List<Widget> pages = [
  //   PageContent(
  //     planet: planetSelected,
  //   ),
  //   ImageGallery(),
  // ];
  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageContent(
        planet: planetSelected,
      ),
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
  const PageContent({super.key, required this.planet});

  final String? planet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragDown: (DragDownDetails) {
        // Navigator.pop(context);
      },
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            Text(
              'The $planet',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Angora',
              ),
            ),
            Text(
              information[0],
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 400.0,
              child: Image.asset(
                'images/$planet.png',
              ),
            ),
            Text(
              information[1],
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      missions[0],
                      style: TextStyle(
                        fontSize: 70,
                        color: Colors.lightBlue,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Active \nMissions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      missions[1],
                      style: TextStyle(
                        fontSize: 70,
                        color: Colors.lightBlue,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Upcoming \nMissions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'How Big Is The $planet?',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[2],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              'How Hot Is The $planet?',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[3],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              'When will the Sun explode?',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[4],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
