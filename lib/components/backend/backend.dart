import 'package:cloud_firestore/cloud_firestore.dart';
import 'information_model.dart';

class FirebaseServices {
  void fetchData(FirebaseFirestore firestore) async {
    String firstCollection = 'planets';
    String firstDocumentID = '92hThamH0FdVZA8OHewS';
    String secondCollection = 'sun';
    String secondDocumentID = 'PVAQW8OpP39D7YKfdkhw';
    String thirdCollection = 'information';

    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot = await firestore
          .collection(firstCollection)
          .doc(firstDocumentID)
          .collection(secondCollection)
          .doc(secondDocumentID)
          .collection(thirdCollection)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        var documentSnapshot = querySnapshot.docs.forEach((element) {});
        // print('Data: ${documentSnapshot[0].data()}');
      } else {
        print('no such document');
      }
    } catch (e) {
      print('error getting document: $e');
    }
  }
}
