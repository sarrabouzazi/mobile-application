import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user.dart';

class LoginService extends ChangeNotifier {
  LoginService(){
    Firebase.initializeApp();
  }
  UserModel? _userModel;

  UserModel? get loggedInUserModel => _userModel;

  Future<bool> signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return false;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    ) as GoogleAuthCredential;

    // Once signed in, return the UserCredential
    UserCredential userCreds = await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCreds != null) {
      _userModel = UserModel(
          uid: userCreds.user!.uid,
          displayName: userCreds.user!.displayName,
          photoUrl: userCreds.user!.photoURL,
          email: userCreds.user!.email
      );
    }

    notifyListeners();

    return true;
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    _userModel = null;
  }

  bool isUserLoggedIn() {
    return _userModel != null;
  }
}