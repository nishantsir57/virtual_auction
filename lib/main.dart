import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:virtual_auction/design/ProfilePage.dart';
import 'package:virtual_auction/design/avtive_bids_home.dart';
import 'package:virtual_auction/design/home.dart';
import 'package:virtual_auction/design/newuser_page.dart';
import 'package:virtual_auction/design/past_bids.dart';
import 'package:virtual_auction/design/upcoming_bids.dart';
import 'package:virtual_auction/widgets/BidsDetail_Card.dart';
import 'package:virtual_auction/widgets/DescriptionOfBid.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';
import 'design/BiddingPage.dart';
import 'design/ProfilePage.dart';
import 'design/avtive_bids_home.dart';
import 'design/avtive_bids_home.dart';
import 'design/avtive_bids_home.dart';
import 'design/home.dart';
import 'design/home.dart';
import 'design/home.dart';
import 'design/loginpage.dart';
import 'design/loginpage.dart';
import 'design/newuser_page.dart';
import 'design/newuser_page.dart';
import 'design/upcoming_bids.dart';
import 'design/upcoming_bids.dart';
import 'development/Signup.dart';
import 'development/Signup.dart';

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
      home: new BiddigPage(),
    );
  }
}
