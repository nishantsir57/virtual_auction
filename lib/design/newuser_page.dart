import 'package:virtual_auction/widgets_login/buttonnewuser.dart';
import 'package:virtual_auction/widgets_login/phonenumber.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets_login/newEmail.dart';
import 'package:virtual_auction/widgets_login/newName.dart';
import 'package:virtual_auction/widgets_login/password.dart';
import 'package:virtual_auction/widgets_login/signup.dart';
import 'package:virtual_auction/widgets_login/textNew.dart';
import 'package:virtual_auction/widgets_login/userOld.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.redAccent, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SingUp(),
                    TextNew(),
                  ],
                ),
                NewNome(),
                PhoneNumber(),
                //NewEmail(),
                PasswordInput(),
                ButtonNewUser(),
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}