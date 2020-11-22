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
    return SafeArea(
      top: true,
      bottom: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 20,
          height: 120,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: Colors.redAccent,
            elevation: 10,
            child: Row(
              children: <Widget>[
                Text("add text here"),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/activebids.jpg'),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

