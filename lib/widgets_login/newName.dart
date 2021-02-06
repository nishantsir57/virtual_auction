import 'package:flutter/material.dart';
import 'package:virtual_auction/development/Signup.dart';

class NewNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NewName(),
    );
  }
}
class NewName extends StatefulWidget {
  @override
  NewNameState createState() => NewNameState();
}

class NewNameState extends State<NewName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 50, right: 50),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          onChanged: (value) => Signup().name=value,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
           border: OutlineInputBorder(
              borderSide: BorderSide(
              width: 0.1
              )
            ),
            fillColor: Colors.lightBlueAccent,
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

}