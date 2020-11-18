import 'package:firebase_auth/firebase_auth.dart';

class Login
{
  String login(var email, var password) {
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
        // print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
        // print('Wrong password provided for that user.');
      }
      return 'success';
    }
  }
}