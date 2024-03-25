import 'package:flutter/material.dart';

class ContentSection extends StatelessWidget {
  const ContentSection(
      {super.key, required this.sectionTitle, required this.sectionContent});

  final String sectionTitle;
  final String sectionContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          sectionTitle,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w800,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          sectionContent,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}

class MissionsSection extends StatelessWidget {
  const MissionsSection(
      {super.key, required this.numberOfMissions, required this.timeline});

  final String numberOfMissions;
  final String timeline;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          numberOfMissions,
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
          '$timeline \nMissions',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}
