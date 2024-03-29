import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ContentSection extends StatelessWidget {
  const ContentSection(
      {super.key, required this.sectionTitle, required this.sectionContent});

  final String sectionTitle;
  final String sectionContent;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    var informationList = [];
    Future<List<Map<String, dynamic>>> fetchData(
        FirebaseFirestore firestore) async {
      String firstCollection = 'planets';
      String firstDocumentID = '92hThamH0FdVZA8OHewS';
      String secondCollection = 'sun';
      String secondDocumentID = 'PVAQW8OpP39D7YKfdkhw';
      String thirdCollection = 'information';

      QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore
          .collection(firstCollection)
          .doc(firstDocumentID)
          .collection(secondCollection)
          .doc(secondDocumentID)
          .collection(thirdCollection)
          .get();

      List<Map<String, dynamic>> dataList = [];

      querySnapshot.docs.forEach((doc) {
        dataList.add(doc.data());
      });
      informationList = dataList;
      return dataList;
      // if (querySnapshot.docs.isNotEmpty) {
      //   documentSnapshot = querySnapshot.docs.toList();
      // }
      //
      // setState(() {
      //   informationList = documentSnapshot;
      // });
      // try {
      //   QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore
      //       .collection(firstCollection)
      //       .doc(firstDocumentID)
      //       .collection(secondCollection)
      //       .doc(secondDocumentID)
      //       .collection(thirdCollection)
      //       .get();
      //
      //   if (querySnapshot.docs.isNotEmpty) {
      //     var documentSnapshot = querySnapshot.docs.toList();
      //
      //     print('Data: ${documentSnapshot[0].data()}');
      //   } else {
      //     print('no such document');
      //   }
      // } catch (e) {
      //   print('error getting document: $e');
      // }
    }

    fetchData(firestore);
    print(informationList);
    Timer(Duration(seconds: 10), () {
      print(informationList);
    });
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

class ContentModel {
  late String title;
  late String content;

  ContentModel({required this.content, required this.title});

  ContentModel.fromJson(Map<String, dynamic> parsedJSON)
      : title = parsedJSON['title'],
        content = parsedJSON['content'];
}
