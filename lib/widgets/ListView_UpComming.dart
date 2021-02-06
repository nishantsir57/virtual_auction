import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/UpComing_Past/BidsDetail_Up.dart';
import '../design/UpComing_Past/BidsDetail_Past.dart';
import 'package:virtual_auction/development/FetchBids.dart';

class BidsListUpcomming extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BidsListUpcommingView(),
    );
  }
}

class BidsListUpcommingView extends StatefulWidget{
  @override
  BidsListUpcommingViewState createState()=> BidsListUpcommingViewState();
}

class BidsListUpcommingViewState extends State<BidsListUpcommingView> {
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
                  child: new BidsDetailUpState().onlyCard(
                      nameofbid=list[i]['nameofbid'],
                      startPrice=list[i]['startPrice'].toString(),
                      currentPrice=list[i]['currentPrice'].toString(),
                      startTime=list[i]['startTime'].toDate().toString(),
                      endTime=list[i]['endTime'].toDate().toString(),
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



