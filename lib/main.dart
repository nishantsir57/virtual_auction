import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:virtual_auction/design/ProfilePage.dart';
import 'package:virtual_auction/design/ActiveBids.dart';
import 'package:virtual_auction/design/home.dart';
import 'package:virtual_auction/design/Login/newuser_page.dart';
import 'package:virtual_auction/design/PastBids.dart';
import 'package:virtual_auction/design/UpcomingBids.dart';
import 'package:virtual_auction/design/UpComing_Past/BidsDetail_Past.dart';
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
import 'design/Login/loginpage.dart';
import 'design/Login/loginpage.dart';
import 'design/Login/newuser_page.dart';
import 'design/Login/newuser_page.dart';
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
