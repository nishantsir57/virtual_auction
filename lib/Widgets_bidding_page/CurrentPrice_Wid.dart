import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets/DescriptionOfBid.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';

class Price extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // Stream bids = FirebaseFirestore.instance.collection('bids').snapshots();
    //
    // while(true)
      return CreatePriceState();
  }

}
class CreatePriceState extends StatefulWidget
{
  @override
  PriceState createState() => PriceState();
}
class PriceState extends State<CreatePriceState>
{
  String _price;
  String _name;
  @override
  Widget build(BuildContext context) {
    _price=new DescriptionOfBidState().price;
    _name=new DescriptionOfBidState().bidderName;
    return Card(
      color: Colors.deepOrangeAccent,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          // decoration: CurrentPrice_decoration(),
          alignment: Alignment.center,
          height: 40,
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "$_name : $_price",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
                wordSpacing: 2,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

}