
import 'package:firebase_auth/firebase_auth.dart';

class SendOTP
{
  void sendOTP(email)async
  {
    var auth = FirebaseAuth.instance;
    await auth.sendPasswordResetEmail(email: email);
  }
}