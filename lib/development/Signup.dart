import 'package:firebase_auth/firebase_auth.dart';

class Signup
{
  String signup(var email, var password)
  {
    FirebaseAuth auth=FirebaseAuth.instance;

    try{
      auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch (e)
    {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return "The account already exists for that email.";
        // print('The account already exists for that email.');
      }
    }
    catch(e)
    {

    }

    return "success";
  }
}