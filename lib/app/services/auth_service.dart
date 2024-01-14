import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  final auth = FirebaseAuth.instance;
  final authStatus = FirebaseAuth.instance.authStateChanges().obs;
  Future<String?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      log(userCredential.toString());
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log(e.code);
        return 'User not found, please sign up';
      } else if (e.code == 'wrong-password') {
        log(e.code);
        return 'Please enter a valid password';
      } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        log(e.code);
        return 'Please enter correct credentials';
      }
      log(e.code);
    }
    return null;
  }
}
