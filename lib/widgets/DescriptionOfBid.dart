import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/Widgets_bidding_page/AddFundsButton.dart';
import 'package:virtual_auction/Widgets_bidding_page/BidAllDetail_Container.dart';
import 'package:virtual_auction/Widgets_bidding_page/BidAmount_TextField.dart';
import 'package:virtual_auction/Widgets_bidding_page/CurrentPrice_Wid.dart';
import 'package:virtual_auction/Widgets_bidding_page/Date_Time.dart';
import 'package:virtual_auction/Widgets_bidding_page/PlaceBid_Button.dart';
import 'ListView_Bids.dart';

class DescriptionBid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DescriptionOfBid();
  }
}

class DescriptionOfBid extends StatefulWidget{
  @override
  DescriptionOfBidState createState()=> DescriptionOfBidState();
}

class DescriptionOfBidState extends State<DescriptionOfBid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: descriptionCard(),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.orangeAccent,
      width: 1.2,
    ),
  );
}

Widget descriptionCard(){
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
                child: Image.network(BidsListViewState.bidImageURL,
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
            color: Colors.deepOrangeAccent,
            margin: new EdgeInsets.all(2.0),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: CurrentPrice(),
            ),
          ),
          Container(
              margin: new EdgeInsets.only(top: 2),
              child: DateTime()
          ),
          Container(
            margin: new EdgeInsets.only(top: 2),
              child: BidAmount()
          ),
          Container(
              margin: new EdgeInsets.only(top: 2),
              child: AddFunds()
          ),
          Container(
              margin: new EdgeInsets.only(top: 2),
              child: PlaceBid()
          ),
        ],
      ),
    ),
  );
}
