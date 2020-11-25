import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 String a;
class BidsList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BidsListView(),
    );
  }
}

class BidsListView extends StatefulWidget{
  // static String bidname;
  // static String startprice;
  // static String currentprice;
  // static String timeStart;
  // static String timeEnd;
  // static String bidDate;
  // static String bidPictureURL;
  // BidsListView(String nameofbid1,String startbidprice1,String currentbidprice1,String starttime1,String endtime1,String dateofbid1, String pathofImage1){
  //   bidname=nameofbid1;
  //   startprice=startbidprice1;
  //   currentprice=currentbidprice1;
  //   timeStart=starttime1;
  //   timeEnd=endtime1;
  //   bidDate=dateofbid1;
  //   bidPictureURL=pathofImage1;
  // }
  @override
  BidsListViewState createState()=> BidsListViewState();
}

class BidsListViewState extends State<BidsListView> {
  @override
  Widget build(BuildContext context) {
    return CardList("Mona Lisa","Starting Bid Price: 287B","Current Bid Price: 289B","Start Time: 10:00AM","End Timw:11:00AM","Date of Bidding: 01-Dec-2020","https://static.boredpanda.com/blog/wp-content/uploads/2020/08/digital-art-mona-lisa-versions-photoshop-designcrowd-fb-png__700.jpg");
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.black,
      width: 1.2,
    ),
  );
}

Widget CardList(String nameofbid1,String startbidprice1,String currentbidprice1,String starttime1,String endtime1,String dateofbid1, String pathofImage1)
{
  // final active_bid_color = Colors.green;
  // final upcoming_bid_color=Colors.limeAccent;
  // final past_bid_color=Colors.redAccent;
  return ListView.builder(
    padding: const EdgeInsets.all(3),
    itemBuilder: (context, i) {
      return Container(
        height: MediaQuery.of(context).size.height/2.3,
          child: onlyCard(nameofbid1, startbidprice1, currentbidprice1, starttime1, endtime1, dateofbid1, pathofImage1));
    }
  );
}

Widget dataofbid(String otherdata){
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      child: Text(otherdata,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            letterSpacing: 0.2,
            wordSpacing: 1.5,
            color: Colors.black
        ),
      ),
    ),
  );
}

Widget Nameofbid(String namedata){
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Text(namedata,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          letterSpacing: 0.2,
          wordSpacing: 1.5,
          color: Colors.black
      ),
    ),
  );
}



Widget onlyCard(String nameofbid,String startbidprice,String currentbidprice,String starttime,String endtime,String dateofbid, String pathofImage){

  return Container(
    color: Colors.white10,
    // decoration: BoxDecoration(
    //   color: Colors.black
    // ),
    height: 200,
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        color: Colors.deepOrange,
        elevation: 10,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: new EdgeInsets.only(top: 10),
              height: 160,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  child: Image.network(pathofImage,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Nameofbid(nameofbid)
                ),
                Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: dataofbid(startbidprice)
                ),
                Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: dataofbid(currentbidprice)
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: dataofbid(starttime)
                    ),
                    Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: dataofbid(endtime)
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: dataofbid(dateofbid)
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

