import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Map<String, dynamic>>> fetchData(String contentType) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String firstCollection = 'planets';
  String firstDocumentID = '92hThamH0FdVZA8OHewS';
  String secondCollection = 'sun';
  String secondDocumentID = 'PVAQW8OpP39D7YKfdkhw';
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
