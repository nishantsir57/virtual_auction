import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceBid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PlaceBidButton(),
    );
  }
}
class PlaceBidButton extends StatefulWidget{
  @override
  PlaceBidButtonState createState()=>PlaceBidButtonState();
}

class PlaceBidButtonState extends State<PlaceBidButton>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: () {
            //TODO HERE
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Place Your Bid',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}