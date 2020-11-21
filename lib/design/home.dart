import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets/live_auction_button.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return LiveAuction();
  }
}