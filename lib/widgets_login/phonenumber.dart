import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhoneNumber(),
    );
  }
}
class PhoneNumber extends StatefulWidget{
  @override
    PhoneNumberState createState()=> PhoneNumberState();
  }


class PhoneNumberState extends State<PhoneNumber>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red,
                    width: 0.1
                )
            ),
            fillColor: Colors.lightBlueAccent,
            labelText: 'Phone Number',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}