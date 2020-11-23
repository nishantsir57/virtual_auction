import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:virtual_auction/design/avtive_bids_home.dart';
import 'package:virtual_auction/design/home.dart';
import 'file:///C:/Users/rsam1/AndroidStudioProjects/virtual_auction/lib/widgets/CardView.dart';
import 'design/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Virtual Auction',
      home: new ActiveBids(),
    );
  }
}
