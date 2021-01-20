import 'package:flutter/material.dart';
import 'package:virtual_auction/development/Login.dart';
import 'package:virtual_auction/development/Signup.dart';

class NewEmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NewEmail(),
    );
  }
}
class NewEmail extends StatefulWidget {
  @override
  NewEmailState createState() => NewEmailState();
}

class NewEmailState extends State<NewEmail> {

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
          onChanged: (value){
            new Signup().email=value;
            new Login().email=value;
            print(value);
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red,
                    width: 0.1
                )
            ),
            fillColor: Colors.lightBlueAccent,
            labelText: 'E-mail',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

}