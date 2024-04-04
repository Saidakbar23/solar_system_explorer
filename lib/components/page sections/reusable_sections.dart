import 'package:flutter/material.dart';
import '../backend/backend.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({super.key, this.planet});
  final String? planet;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchData('information', planet!),
      builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No data available'));
        }
        return Column(
          children: List.generate(
            snapshot.data!.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  snapshot.data![index]['title'],
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  snapshot.data![index]['content'],
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MissionsSection extends StatelessWidget {
  const MissionsSection({super.key, this.planet});

  final String? planet;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchData('missions', planet!),
      builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No data available'));
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            snapshot.data!.length,
            (index) => Row(
              children: [
                Text(
                  snapshot.data![index]['number'],
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.lightBlue,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${snapshot.data![index]['timeline']} \nMissions',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
