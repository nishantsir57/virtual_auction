import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BidAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BidAmountWidget(),
    );
  }
}
class BidAmountWidget extends StatefulWidget {
  @override
  BidAmountWidgetState createState() => BidAmountWidgetState();
}

class BidAmountWidgetState extends State<BidAmountWidget> {
  static String bidAmount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(1.0),
      decoration: myBoxDecoration(),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            // decoration: myBoxDecoration(),
            width: MediaQuery.of(context).size.width/2.14,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text("Enter Your Price",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 2.5,
                    wordSpacing: 5,
                    color: Colors.black
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                // alignment: Alignment.topRight,
                // margin: new EdgeInsets.only(right: 4.0),
                height: 60,
                width: MediaQuery.of(context).size.width/2,
                child: TextField(
                  onChanged: (value) => bidAmount=value,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 0.1
                        )
                    ),
                    fillColor: Colors.black,
                    labelText: 'IN RUPEES',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black38,
      width: 1.2,
    ),
  );
}

