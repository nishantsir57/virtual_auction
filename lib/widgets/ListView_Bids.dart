import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BidsDetail_Card.dart';
import 'package:virtual_auction/development/FetchBids.dart';

class BidsList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BidsListView(),
    );
  }
}

class BidsListView extends StatefulWidget{
  @override
  BidsListViewState createState()=> BidsListViewState();
}

class BidsListViewState extends State<BidsListView> {
  static String nameofbid,startPrice,currentPrice,startTime,endTime,dateOfBid;
  static String bidImageURL;
  static String _type;
  set type(String value) => _type=value;
  get type=>_type;
  get name => nameofbid;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FetchBids().fetchBids(_type),
      builder: (BuildContext context, AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
        if (snapshot.hasData) {
          return createList(snapshot.data);
        }

        return CircularProgressIndicator();
      },
    );
  }
  createList(List<DocumentSnapshot> list)
  {
    return SafeArea(
        child: Expanded(
          child: ListView.builder(
            itemCount: list.length,
              padding: const EdgeInsets.all(3),
              itemBuilder: (context, i) {
                return Container (
                  height: MediaQuery.of(context).size.height/1.6,
                  child: new BidsDetailCardViewState().onlyCard(
                      nameofbid=list[i]['nameofbid'],
                      startPrice=list[i]['startPrice'].toString(),
                      currentPrice=list[i]['currentPrice'].toString(),
                      startTime=list[i]['startTime'].toDate().toString(),
                      endTime=list[i]['endTime'].toDate().toString(),
                      dateOfBid="12-11-2020",
                      bidImageURL=list[i]['bidImageURL'],
                    context
                  ),
                );
              }
          ),
        )
    );
  }
}



