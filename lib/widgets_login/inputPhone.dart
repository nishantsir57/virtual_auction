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
  InputPhoneState createState() => InputPhoneState();
}

class InputPhoneState extends State<InputPhone> {
  static String phone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          onChanged: (value) => phone=value,
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