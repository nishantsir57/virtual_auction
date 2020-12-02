import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/avtive_bids_home.dart';

class AddFunds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddFundsView();
  }
}

class AddFundsView extends StatefulWidget {
  @override
  AddFundsViewState createState() => AddFundsViewState();
}

class AddFundsViewState extends State<AddFundsView> {
  static String presentAmountInAccount="100";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(1.0),
      // decoration: myBoxDecoration(),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width/2.14,
              child: accountBalance("Balance: 101")),
         Container(
         width: MediaQuery.of(context).size.width/2.14,
             child: addfunds())
        ],
      ),
    );
  }
}

Widget accountBalance(String howmuch){
  return Container(
    // decoration: myBoxDecoration(),
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text(howmuch,
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
  );
}

Widget addfunds(){
  return  Container(
    color: Colors.green,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        // width: 100,
        child: FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  'Add Funds',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
BoxDecoration AFBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black26,
      width: 1.2,
    ),
  );
}
