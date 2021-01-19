import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:virtual_auction/design/ProfilePage.dart';
import 'package:virtual_auction/design/ActiveBids.dart';
import 'package:virtual_auction/design/home.dart';
import 'package:virtual_auction/design/newuser_page.dart';
import 'package:virtual_auction/design/PastBids.dart';
import 'package:virtual_auction/design/UpcomingBids.dart';
import 'package:virtual_auction/widgets/BidsDetail_Card.dart';
import 'package:virtual_auction/widgets/DescriptionOfBid.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';
import 'design/BiddingPage.dart';
import 'design/ProfilePage.dart';
import 'design/ActiveBids.dart';
import 'design/ActiveBids.dart';
import 'design/ActiveBids.dart';
import 'design/home.dart';
import 'design/home.dart';
import 'design/home.dart';
import 'design/loginpage.dart';
import 'design/loginpage.dart';
import 'design/newuser_page.dart';
import 'design/newuser_page.dart';
import 'design/UpcomingBids.dart';
import 'design/UpcomingBids.dart';
import 'development/Signup.dart';
import 'development/Signup.dart';

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
      home: new LoginPage(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return FutureBuilder(
  //     // Initialize FlutterFire:
  //     future: _initialization,
  //     builder: (context, snapshot) {
  //       // Check for errors
  //       if (snapshot.hasError) {
  //         return new Text("Something went wrong");
  //       }
  //
  //       // Once complete, show your application
  //       if (snapshot.connectionState == ConnectionState.done) {
  //          return MaterialApp(
  //
  //           debugShowCheckedModeBanner: false,
  //           title: 'Virtual Auction',
  //           home: new LoginPage(),
  //         );
  //       }
  //
  //       // Otherwise, show something whilst waiting for initialization to complete
  //       return new Text("Loading...");
  //     },
  //   );
  // }
}
