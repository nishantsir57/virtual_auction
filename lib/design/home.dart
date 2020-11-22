import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets_login/CardView.dart';

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
          backgroundColor: Colors.redAccent,
          title: Center(
              child: Text("Virtual Auction",
              style: TextStyle(
                fontSize: 20,
                  letterSpacing: 3,
                  wordSpacing: 6,
                  color: Colors.black
              ),)
          ),
        ),
        body: new CardView(),
      ),
    );
  }
}