import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  getcurentuser() async {
    return await auth.currentUser;
  }

  signInwithGoogle(BuildContext context) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    final GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication?.accessToken,
      idToken: googleSignInAuthentication?.idToken,
    );

    final UserCredential userCredential =
        await auth.signInWithCredential(credential);

    User? userdetail = userCredential.user;

    if (userCredential != null) {
      Map<String, dynamic> userinfo = {
        "Name": userdetail?.displayName,
        "userEmail": userdetail?.email,
        "userImage": userdetail?.photoURL,
        "uniqueId": userdetail?.uid
      };
    }
  }
}
