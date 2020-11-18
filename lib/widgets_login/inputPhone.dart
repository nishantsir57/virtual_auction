import 'package:flutter/material.dart';

class InputPhoneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InputPhone(),
    );
  }
}
class InputPhone extends StatefulWidget {
  @override
  _InputPhoneState createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
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
                    color: Colors.lightBlueAccent,
                    width: 0.5
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