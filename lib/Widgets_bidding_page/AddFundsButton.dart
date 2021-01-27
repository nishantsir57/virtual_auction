import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virtual_auction/development/FetchProfile.dart';
import 'package:virtual_auction/development/UpdateBalance.dart';

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
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              height: 40,
              child: accountBalance()),
         Container(
             child: addfunds(addAmountValue))
        ],
      ),
    );
  }
}

Widget accountBalance(){
  return FutureBuilder(
    future: FetchProfile().getAmount(),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot)
      {
        if(snapshot.hasData)
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(snapshot.data['fund'].toString(),
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 2,
                  wordSpacing: 5,
                  color: Colors.black
              ),
            ),
          ),
        );
        else
          print('No data found');
      }
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
              onPressed: () async{
               await UpdateBalance().updateBalance(addAmountValue);
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
