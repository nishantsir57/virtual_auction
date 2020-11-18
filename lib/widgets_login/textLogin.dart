import 'package:flutter/material.dart';

class TextLogiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextLogin(),
    );
  }
}
class TextLogin extends StatefulWidget {
  @override
  TextLoginState createState() => TextLoginState();
}

class TextLoginState extends State<TextLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                'Every answer is in you. Find it.',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}