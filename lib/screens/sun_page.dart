import 'package:flutter/material.dart';
import '../data/sun_data.dart';

class SunPage extends StatelessWidget {
  const SunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                      Text(
                        'Namesake',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
