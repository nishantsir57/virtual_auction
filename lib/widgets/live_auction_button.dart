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
    return Scaffold();
  }
}
