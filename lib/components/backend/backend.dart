import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Map<String, dynamic>>> fetchData(
    String contentType, String planet) async {
  Map<String, String> planetIDs = {
    'sun': 'PVAQW8OpP39D7YKfdkhw',
    'mercury': '3cJbvPR2UUdIBDwhzRss',
    'venus': '78WQhiQHs6FbzM1DuaUp',
    'earth': 'Z6IgELoMyhOffjBVl0In',
    'mars': 'ehIltoQnVRHXwYKk5SY0',
    'jupiter': 'B6EEUnwOONhLOnzGtEUA',
    'saturn': 'wmW4kFFx44DT2RsODPyq',
    'uranus': 'raG170pCp3DxKblmgUjy',
    'neptune': 'ZpphM7H2o7JesX4CnfKg',
  };
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String firstCollection = 'planets';
  String firstDocumentID = '92hThamH0FdVZA8OHewS';
  String secondCollection = planet;
  String secondDocumentID = planetIDs[planet]!;
  String thirdCollection = contentType;

  QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore
      .collection(firstCollection)
      .doc(firstDocumentID)
      .collection(secondCollection)
      .doc(secondDocumentID)
      .collection(thirdCollection)
      .get();

  List<Map<String, dynamic>> dataList = [];

  for (var doc in querySnapshot.docs) {
    dataList.add(doc.data());
  }
  return dataList;
}
