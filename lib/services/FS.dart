import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FS {
  static Future<void> SaveUserDetails(String uid, String Name, String Age) async {
    await FirebaseFirestore.instance.collection('users').doc(uid).set({
      'Name' : Name,
      'Age' : Age,
      'Score' : 0
    });
  }

  static Future<Map<dynamic, dynamic>> FetchUserDetail() async {
    print('Inside FetchUserDetail');
    String uid = await FirebaseAuth.instance.currentUser!.uid;
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance.collection('users').doc(uid).get();
    Map<dynamic, dynamic> data = documentSnapshot.data() as Map<dynamic, dynamic>;
    // print(data);
    return data;
  }
}