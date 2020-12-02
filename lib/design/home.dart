import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/rsam1/AndroidStudioProjects/virtual_auction/lib/widgets/Home_CardView.dart';

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
          leading: FlatButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
            ),
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
              onPressed: () {},
            ),
          ],
        ),
        body: new CardView(),
      ),
    );
  }
}
