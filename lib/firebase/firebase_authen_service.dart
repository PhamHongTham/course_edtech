// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenService {
  FirebaseAuthenService();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> signUp(String email, String passWord) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: passWord);
      return userCredential.user;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<User?> signIn(String email, String passWord) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: passWord);
      return userCredential.user;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
