import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/ActiveBids.dart';

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
  static String addAmountValue;

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
             child: addfunds(addAmountValue))
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

Widget addfunds(String addAmountValue){

  return  Container(
    color: Colors.green,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        // width: 100,
        child: Row(
          children: [
            Container(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) => addAmountValue=value,
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
            FlatButton(
              onPressed: () {
                return null;
              },
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
          ],
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
