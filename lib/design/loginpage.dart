import 'package:virtual_auction/widgets_login/buttonLogin.dart';
import 'package:virtual_auction/widgets_login/first.dart';
import 'package:virtual_auction/widgets_login/inputPhone.dart';
import 'package:virtual_auction/widgets_login/newEmail.dart';
import 'package:virtual_auction/widgets_login/password.dart';
import 'package:virtual_auction/widgets_login/textLogin.dart';
import 'package:virtual_auction/widgets_login/verticalText.dart';
import 'package:flutter/material.dart';

class LoginPage extends  StatefulWidget {
  @override
    _LoginPageState createState()=> _LoginPageState();
  }

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.redAccent, Colors.cyan]),
            color: Color(0xff5c0632),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    VerticalText(),
                    TextLogin(),
                  ]),
                  NewEmail(),
                  PasswordInput(),
                  LoginButton(),
                  FirstTime(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
