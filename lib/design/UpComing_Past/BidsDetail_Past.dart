import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/BiddingPage.dart';
import 'package:virtual_auction/design/PastBiddingPage.dart';
import 'package:virtual_auction/design/UpComing_Past/Past_BidPage.dart';
import 'package:virtual_auction/design/UpComing_Past/UP_BidPage.dart';
import 'package:virtual_auction/design/UpcomingBiddingPage.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';

class BidsDetailCardView extends StatefulWidget {
  @override
  BidsDetailCardViewState createState() => BidsDetailCardViewState();
}

class BidsDetailCardViewState extends State<BidsDetailCardView> {
  static String _name;
  get Name => _name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.15,
      child: onlyCard(
          BidsListViewState.nameofbid,
          BidsListViewState.startPrice,
          BidsListViewState.currentPrice,
          BidsListViewState.startTime,
          BidsListViewState.endTime,
          BidsListViewState.bidImageURL,
          context
      ),
    );
  }

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1.2,
    ),
  );
}

Widget dataofbid(String otherdata) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      child: Text(
        otherdata,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            letterSpacing: 0.2,
            wordSpacing: 1.5,
            color: Colors.black),
      ),
    ),
  );
}

Widget Nameofbid(String namedata) {
  return Container(
    decoration: myBoxDecoration(),
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text(
        namedata,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            letterSpacing: 0.2,
            wordSpacing: 1.5,
            color: Colors.black),
      ),
    ),
  );
}
  Widget onlyCard(String nameofbid, String startbidprice,
      String currentbidprice,
      String starttime, String endtime, String pathofImage,
      BuildContext context) {
    var name=nameofbid;
    return Container(
      color: Colors.white10,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: Colors.greenAccent,
          elevation: 10,
          child: GestureDetector(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: new EdgeInsets.only(top: 10),
                  height: 160,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      child: Image.network(
                        pathofImage,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Nameofbid("Name: " + nameofbid)),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: dataofbid("Start Bid Price: " + startbidprice)),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child:
                        dataofbid("Current Bid Price: " + currentbidprice)),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: dataofbid("Start Time: " + starttime)),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: dataofbid("End Time: " + endtime)),

                  ],
                ),
              ],
            ),
            onTap: () {
              _name=nameofbid;
              // showDialog(
              //   context: context,
              //   builder: (BuildContext context) {
              //     return new AlertDialog(
              //       title: new Text(BidsListViewState.type1),
              //       // content: new Text(status),
              //     );
              //   },
              // );
              print(BidsListViewState.type1);
              if(BidsListViewState.type1 == 'active')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BiddigPage()),
                  );
                }
              else if(BidsListViewState.type1 == 'past')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BidPage_Past()),
                  );
                }
              else if(BidsListViewState.type1 == 'upcoming')
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BidPage_UP()),
                  );
                }
              else
                {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return new AlertDialog(
                        title: new Text(BidsListViewState.type1),
                        // content: new Text(status),
                      );
                    },
                  );
                }
            },
          ),
        ),
      ),
    );
  }
}