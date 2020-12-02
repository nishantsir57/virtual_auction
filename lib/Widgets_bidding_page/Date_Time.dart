import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/avtive_bids_home.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';

class DateTime extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DateTimeView();
  }
}

class DateTimeView extends StatefulWidget {
  @override
  DateTimeViewState createState()=>DateTimeViewState();
}

class DateTimeViewState extends State<DateTimeView>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 90,
      child: new ListView(
        children: <Widget>[
          BiddingPageDate(),
          BiddingPageTime()
        ],
      ),
    );
  }
}

Widget BiddingPageDate()
{
  return Container(
    // decoration: myBoxDecoration(),
    height: 45,
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Icon(
                  Icons.date_range,
                  color: Colors.black38,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(BidsListViewState.dateOfBid,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget BiddingPageTime()
{
  return Container(
    // decoration: myBoxDecoration(),
    height: 50,
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Icon(
                  Icons.timer,
                  color: Colors.black38,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(BidsListViewState.startTime+ "    to   ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    // letterSpacing: 3,
                    // wordSpacing: 6,
                    color: Colors.black
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(BidsListViewState.endTime,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    // letterSpacing: 3,
                    // wordSpacing: 6,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black26,
      width: 1.2,
    ),
  );
}