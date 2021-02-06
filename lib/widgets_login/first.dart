import 'package:flutter/material.dart';
import 'package:virtual_auction/design/Login/newuser_page.dart';

class FirstTimeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FirstTime(),
    );
  }
}

class FirstTime extends StatefulWidget {
  @override
  FirstTimeState createState() => FirstTimeState();
}

class FirstTimeState extends State<FirstTime> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 20,
        child: Row(
          children: <Widget>[
            Text(
              'Your first time?',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewUser()));
              },
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}