import 'package:flutter/material.dart';
import 'package:virtual_auction/development/Signup.dart';

class AdhaarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Adhaar(),
    );
  }
}
class Adhaar extends StatefulWidget {
  @override
  AdhaarState createState() => AdhaarState();
}

class AdhaarState extends State<Adhaar> {
  String _adhar;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          onChanged: (value) => new Signup().adhar=value,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red,
                    width: 0.1
                )
            ),
            fillColor: Colors.lightBlueAccent,
            labelText: 'Adhaar Number',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

  String get adhar => _adhar;
}