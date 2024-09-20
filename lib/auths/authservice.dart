// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class AuthServices {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   Future<String> register(
//       {required String fName,
//       required String lName,
//       required String email,
//       required String dob,
//       required String password}) async {
//     String res = "Some error Occured";
//     try {
//       UserCredential credential = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       await _firestore.collection("users").doc(credential.user!.uid).set({
//         'firstname': fName,
//         'lastname' : lName,
//         'email': email,
//         'dob':dob,
//         'uid':credential.user!.uid
//       });
//       res = "success";
//     } catch (e) {
//       print(e.toString());
//     }
//     return res;
//   }
// }
