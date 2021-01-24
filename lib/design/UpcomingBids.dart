import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/home.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';

class UpcomingBids extends StatefulWidget{
  @override
  UpcomingBidsState createState()=> UpcomingBidsState();
}

class UpcomingBidsState extends State<UpcomingBids> {
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
                child: Text("UPCOMING BIDS",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 3,
                      wordSpacing: 6,
                      color: Colors.amber
                  ),
                )
            ),
          ),
          leading: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              ),
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
