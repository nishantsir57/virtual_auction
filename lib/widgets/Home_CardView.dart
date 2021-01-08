import 'package:flutter/material.dart';
import 'package:virtual_auction/design/ActiveBids.dart';
import 'package:virtual_auction/design/PastBids.dart';
import 'package:virtual_auction/design/UpcomingBids.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card1(),
    );
  }
}

class Card1 extends StatefulWidget {
  @override
  CardViewState createState() => CardViewState();
}

class CardViewState extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: new ListView(
        children: <Widget>[
          getCard('Active\nBids',
              "https://cdn0.iconfinder.com/data/icons/auction-and-competition-outline/64/bidder-bidding-auction-groups-offer-offering-512.png"),
          getCard('Upcoming\nBids',
              "https://pngimage.net/wp-content/uploads/2018/06/hourglass-flat-icon-png.png"),
          getCard('Past\nBids',
              "https://cdn3.iconfinder.com/data/icons/common-4/24/ui-30-512.png")
        ],
      ),
    );
  }

  Widget getCard(String value, String pathofImage) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: Colors.white70,
          elevation: 10,
          child: new GestureDetector(
            child: Center(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      child: Image.network(
                        pathofImage,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      value,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 3,
                          wordSpacing: 6,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              if(value == 'Active\nBids')
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActiveBids()),
                );
              else if(value == 'Upcoming\nBids')
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpcomingBids()),
                );
              else if(value == 'Past\nBids')
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PastBids()),
                );
            }
          ),
        ),
      ),
    );
  }
}
