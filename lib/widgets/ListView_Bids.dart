import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BidsDetail_Card.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
          padding: const EdgeInsets.all(3),
          itemBuilder: (context, i) {
            return Container(
                height: MediaQuery.of(context).size.height/2.15,
                child: onlyCard(
                    nameofbid="Mona Lisa",
                    startPrice="51",
                    currentPrice="101",
                    startTime="10:00AM",
                    endTime="11:00AM",
                    dateOfBid="01-Dec-2020",
                    bidImageURL="https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"
              ),
            );
          }
      ),
    );
  }
}



