import 'package:flutter/material.dart';
import '../../data/earth_data.dart';

class EarthPage extends StatelessWidget {
  static const String id = 'Earth Page';
  const EarthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            Text(
              'Earth',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Angora',
              ),
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
            SizedBox(
              height: 300.0,
              child: Image.asset(
                'images/earth.png',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              information[1],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      missions[0],
                      style: TextStyle(
                        fontSize: 70,
                        color: Colors.lightBlue,
                        fontFamily: 'Poppins',
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
                        fontFamily: 'Poppins',
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
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Past \nMissions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
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
              'Namesake',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
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
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Size and Distance',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
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
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Orbit and Rotation',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
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
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Moons',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[5],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 400.0,
              child: Image.asset(
                'images/earth_gallery/earth1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Formation',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[6],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Structure',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[7],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Surface',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[8],
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Atmosphere',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              information[9],
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