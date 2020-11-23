
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return CardList("Name Name Name Na","Start Bid Price: 5000000","Current Bid Price: 0000000","Start Time:12.12 AM"," End Time:88:88PM","Date of Bid:25/09/2020", "https://pngimage.net/wp-content/uploads/2018/06/hourglass-flat-icon-png.png");
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.white30,
    border: Border.all(
      color: Colors.lightBlueAccent,
      width: 1.2,

      //
      //                <--- border width here
    ),
  );
}

Widget CardList(String nameofbid,String startbidprice,String currentbidprice,String starttime,String endtime,String dateofbid, String pathofImage)
{
  return ListView.builder(
    padding: const EdgeInsets.all(3),
    itemBuilder: (context, i) {
      return Container(
          height: MediaQuery.of(context).size.height / 3.5,
          child: Container(
            decoration: myBoxDecoration(),
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: Colors.white24,
                elevation: 10,
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: new EdgeInsets.all(2.0),
                      height: 140,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Image.network(pathofImage,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: new EdgeInsets.only(right: 10.0, top: 18.0,left: 0.1),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(nameofbid,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(startbidprice,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                wordSpacing: 1.5,
                                color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(currentbidprice,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                wordSpacing: 1.5,
                                color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(starttime,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                wordSpacing: 1.5,
                                color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(endtime,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                wordSpacing: 1.5,
                                color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(dateofbid,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                letterSpacing: 0.2,
                                wordSpacing: 1.5,
                                color: Colors.black
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
      );
    }
  );
}

