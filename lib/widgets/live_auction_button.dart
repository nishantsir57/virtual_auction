import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveAuctionWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LiveAuction(),
    );
  }

}

class LiveAuction extends StatefulWidget{
  @override
  LiveAuctionState createState() => LiveAuctionState();
  }

class LiveAuctionState extends State<LiveAuction> {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Image.network(
        'https://placeimg.com/640/480/any',
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}

