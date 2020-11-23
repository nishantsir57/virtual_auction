import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets/bidsListView.dart';

class ActiveBids extends StatefulWidget{
  @override
  ActiveBidsState createState()=> ActiveBidsState();
}

class ActiveBidsState extends State<ActiveBids> {
  @override
  Widget build(BuildContext context) {
    return getDetails();
  }

  Widget getDetails() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
              child: Text("Active Bids",
              style: TextStyle(
                fontSize: 20,
                  letterSpacing: 3,
                  wordSpacing: 6,
                  color: Colors.black
              ),)
          ),
        ),
        body: new BidsListView(),
      ),
    );
  }
}