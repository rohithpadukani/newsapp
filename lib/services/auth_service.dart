

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Sign in
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      Fluttertoast.showToast(
        msg: "Signed in successfully!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
      return user;
    } catch (e) {
      print(e.toString());
      Fluttertoast.showToast(
        msg: "Error signing in: $e",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
      return null;
    }
  }

  //Register user
  Future<User?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      Fluttertoast.showToast(
        msg: "Registered successfully!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
      return user;
    } catch (e) {
      print(e.toString());
      Fluttertoast.showToast(
        msg: "Error registering: $e",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
      return null;
    }
  }

  //Sign out
  Future<void> signOut() async {
    try {
      Fluttertoast.showToast(
        msg: "Signed out successfully!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      Fluttertoast.showToast(
        msg: "Error signing out!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 16.0,
      );
      return null;
    }
  }
}
