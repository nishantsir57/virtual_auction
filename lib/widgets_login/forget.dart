import 'package:flutter/material.dart';

class ForgetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ForgetWidget(),
    );
  }
}
class Forgot extends StatefulWidget {
  @override
  ForgotState createState() => ForgotState();
}

class ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
      child: Container(
        alignment: Alignment.topRight,
        height: 20,
        child: FlatButton(
          onPressed: (){},
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }
}