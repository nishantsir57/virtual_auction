import 'dart:html';

import 'package:flutter/material.dart';

class CardView extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return Container(
    child: Card1(),
  );
}
}
class Card1 extends StatefulWidget  {
@override
CardViewState createState() => CardViewState();
}


class CardViewState extends State<Card1> {
@override
Widget build(BuildContext context) {
return new Card(
  child: new ListView(
    children: <Widget>[
      new Text(
        "gdfghf"
      )
    ],
  ),
);
}
}
