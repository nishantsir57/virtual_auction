import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:virtual_auction/design/home.dart';
import 'design/home.dart';
import 'design/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // final Future<FirebaseApp> _initialization = await Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Virtual Auction',
      home: checkUser(),
    );
  }

  Widget checkUser()
  {
    if(FirebaseAuth.instance.currentUser != null)
    {
      return new Home();
    }
    else
      return new LoginPage();
  }
}
