import 'package:firebase_auth/firebase_auth.dart';

class Login
{
  static String  _email;
  static String _pass;
  set email(String e) => _email=e;
  set password(String p) => _pass = p;
  Future<String> login() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      await auth.signInWithEmailAndPassword(
          email: _email,
          password: _pass
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
        // print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
        // print('Wrong password provided for that user.');
      }
    }
    return 'success';
  }
}