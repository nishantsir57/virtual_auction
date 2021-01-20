import 'package:flutter/material.dart';
import 'package:virtual_auction/development/Login.dart';
import 'package:virtual_auction/development/Signup.dart';

class PasswordInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PasswordInput(),
    );
  }
}
class PasswordInput extends StatefulWidget {
  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  static String _password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          // controller: password1,
          onChanged: (value) {

            new Signup().password=value;
            new Login().password=value;
            print(value);
          },
          style: TextStyle(
            color: Colors.white,
          ),
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.greenAccent,
                width: 0.1
              )
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }

  String get password => _password;
}