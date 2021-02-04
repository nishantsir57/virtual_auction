import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/development/FetchBids.dart';
import 'package:virtual_auction/development/FetchProfile.dart';
import 'package:virtual_auction/development/PutBid.dart';
import 'package:virtual_auction/design/UpComing_Past/BidsDetail_Card.dart';
import 'package:virtual_auction/widgets/DescriptionOfBid.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'BidAmount_TextField.dart';
import 'CurrentPrice_Wid.dart';

class PlaceBid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PlaceBidButton(),
    );
  }
}
class PlaceBidButton extends StatefulWidget{
  @override
  PlaceBidButtonState createState()=>PlaceBidButtonState();
}

class PlaceBidButtonState extends State<PlaceBidButton>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: () async{
              String bidAmount=await new BidAmountWidgetState().bidAmount;
              double amount=await FetchBids().getAmount(BidsDetailCardViewState().Name);
              print('new bidding amount is $amount');
              // await new PutBid().putBid(double.parse(bidAmount), await new BidsDetailCardViewState().Name);
              // await new DescriptionOfBidState().price(bidAmount);
              DocumentSnapshot _doc=await FetchProfile().getAmount();
              String fund=await _doc['fund'];
              if(double.parse(bidAmount) >  amount)
                {
                  if(double.parse(bidAmount) > double.parse(fund))
                    {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return new AlertDialog(
                            title: new Text('You are running out of balance!!! Please add more funds to place this bid'),
                            // content: new Text(status),
                          );
                        },
                      );
                    }
                  else
                    {
                      await new PutBid().putBid(double.parse(bidAmount), await new BidsDetailCardViewState().Name);
                      await new DescriptionOfBidState().price(bidAmount);
                    }
                }
              else
                {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return new AlertDialog(
                        title: new Text('Please Put bid heigher then current price'),
                        // content: new Text(status),
                      );
                    },
                  );
                }

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Place Your Bid',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}