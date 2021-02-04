import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/Widgets_bidding_page/AddFundsButton.dart';
import 'package:virtual_auction/Widgets_bidding_page/BidAllDetail_Container.dart';
import 'package:virtual_auction/Widgets_bidding_page/BidAmount_TextField.dart';
import 'package:virtual_auction/Widgets_bidding_page/CurrentPrice_Wid.dart';
import 'package:virtual_auction/Widgets_bidding_page/Date_Time.dart';
import 'package:virtual_auction/Widgets_bidding_page/PlaceBid_Button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virtual_auction/development/FetchBids.dart';
import 'package:virtual_auction/design/UpComing_Past/BidsDetail_Card.dart';

class Description_Past extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Stream bids = FirebaseFirestore.instance.collection('bids').snapshots();


    return StreamBuilder<QuerySnapshot>(
        stream: bids,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return PastDescription();
        },
      );

  }
}

class PastDescription extends StatefulWidget{
  @override
  PastDescriptionState createState()=> PastDescriptionState();
}

class PastDescriptionState extends State<PastDescription> {
  static String _bidName;
  static String _price;
  static String _bidderName;
  get bidderName => _bidderName;
  get price => _price;
  set price(value) => _price=value;
  get bidName => _bidName;


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FetchBids().fetchBid(new BidsDetailCardViewState().Name),
      builder: (BuildContext context, AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
        if (snapshot.hasData) {
          _bidName=snapshot.data[0]['nameofbid'];
          _price=snapshot.data[0]['currentPrice'].toString();
          _bidderName=snapshot.data[0]['email'];
          return fillDetails(context, snapshot.data);
        }

        return CircularProgressIndicator();
      },
    );
  }
}
fillDetails(BuildContext context, List<DocumentSnapshot> doc)
{
  return Container(
    height: MediaQuery.of(context).size.height,
    child: descriptionCard(doc),
  );
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.orangeAccent,
      width: 1.2,
    ),
  );
}

Widget descriptionCard(List<DocumentSnapshot> doc){

  Stream users = FirebaseFirestore.instance.collection('users').snapshots();

  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(0.3),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            // decoration: myBoxDecoration(),
            // margin: new EdgeInsets.only(top: 2),
            height: 220,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: myBoxDecoration(),
                child: Image.network(doc[0]['bidImageURL'],
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            margin: new EdgeInsets.all(2.0),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: ItemDesc(),
            ),
          ),

          Container(
              margin: new EdgeInsets.only(top: 2),
              child: DateTime(doc[0]['startTime'].toDate().toString(), doc[0]['endTime'].toDate().toString())
          ),
          Container(
            child: Center(
              child: Text(
                "Item Sold, Bid Closed",

                style: TextStyle(
                  color: Colors.red,
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

