import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/ProfilePage.dart';

import '../widgets/Home_CardView.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return getDetails();
  }

  Widget getDetails()
  {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          backgroundColor: Colors.redAccent,
          title: Center(
              child: Text("Virtual Auction",
              style: TextStyle(
                fontSize: 20,
                  letterSpacing: 3,
                  wordSpacing: 6,
                  color: Colors.black
              ),
                textAlign: TextAlign.left,
              )
          ),
          actions: [
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.live_help),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ],
        ),
        body: new CardView(),
      ),
    );
  }
}
