import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets/bidsListView.dart';

class PastBids extends StatefulWidget{
  @override
  PastBidsState createState()=> PastBidsState();
}

class PastBidsState extends State<PastBids> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          automaticallyImplyLeading: true,
          bottomOpacity: 100,
          elevation: 0,
          title: Container(
            decoration: myBoxDecoration(),
            child: Center(
                child: Text("PAST BIDS",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 3,
                      wordSpacing: 6,
                      color: Colors.red
                  ),
                )
            ),
          ),
        ),
        body: new BidsListView(),
      ),
    );
  }
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.black,
      width: 1.2,
    ),
  );
}
