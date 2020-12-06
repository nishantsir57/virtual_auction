import 'package:flutter/material.dart';
import 'package:virtual_auction/design/loginpage.dart';

class UserOldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UserOld(),
    );
  }
}
class UserOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30,right: 30),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 20,
        child: Row(
          children: <Widget>[
            Text(
              'Have we met before? Yes?',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(1.0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}