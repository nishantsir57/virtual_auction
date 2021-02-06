
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mailer2/mailer.dart';

class SendOTP
{
  void sendOTP(email)async
  {
    var auth = FirebaseAuth.instance;
    await auth.sendPasswordResetEmail(email: email);
  }
}