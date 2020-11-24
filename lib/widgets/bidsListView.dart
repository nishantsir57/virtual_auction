import 'dart:ui';

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
    return CardList("Name Name Name Na","Start Bid Price: 5000000","Current Bid Price: 0000000","Start Time:12.12 AM"," End Time:88:88PM","Date of Bid:25/09/2020", "https://i.ebayimg.com/images/g/iMIAAOSwuOZdvszh/s-l800.jpg");
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.white30,
    border: Border.all(
      color: Colors.white30,
      width: 1.2,
    ),
  );
}

Widget CardList(String nameofbid,String startbidprice,String currentbidprice,String starttime,String endtime,String dateofbid, String pathofImage)
{
  return ListView.builder(
    padding: const EdgeInsets.all(3),
    itemBuilder: (context, i) {
      return Container(
          height: MediaQuery.of(context).size.height/2.2,
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
                color: Colors.cyan,
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
                        Container(
                          margin: new EdgeInsets.all(1.0),
                          child:
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Nameofbid(nameofbid)
                          ),
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
          )
      );
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

