import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets/DescriptionOfBid.dart';

import 'UpComing_Past/BidsDetail_Past.dart';

class UpcomingBiddigPage extends StatefulWidget{
  @override
  UpcomingBiddigPageState createState()=> UpcomingBiddigPageState();
}

class UpcomingBiddigPageState extends State<UpcomingBiddigPage> {
  @override
  Widget build(BuildContext context) {
    print('I amm on Upcoming page');
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            automaticallyImplyLeading: true,
            bottomOpacity: 100,
            elevation: 0,
            title: Container(
              // decoration: myBoxDecoration(),
              child: Center(
                  child: Text(BidsDetailCardViewState().Name,
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 3,
                        wordSpacing: 6,
                        color: Colors.black
                    ),
                  )
              ),
            ),
          ),
          body: new DescriptionBid()
      ),
    );
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
