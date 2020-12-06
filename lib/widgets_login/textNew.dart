import 'package:flutter/material.dart';

class TextNewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextNew(),
    );
  }
}
class TextNew extends StatefulWidget {
  @override
  TextNewState createState() => TextNewState();
}

class TextNewState extends State<TextNew> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,top: 5),
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
                'We can start something new',
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