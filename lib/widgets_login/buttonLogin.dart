import 'package:virtual_auction/design/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/development/Login.dart';
import 'package:virtual_auction/widgets_login/inputPhone.dart';
import 'package:virtual_auction/widgets_login/password.dart';

class LoginButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginButton(),
    );
  }
}

class LoginButton extends StatefulWidget {
  @override
  LoginButtonState createState() => LoginButtonState();
}

class LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    5.0, // horizontal, move right 10
                    5.0, // vertical, move down 10
                  ),
                ),
              ],
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            child: FlatButton(
              onPressed: () async {
                String status= await new Login().login();
                if(status == 'success')
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home())
                );
                else
                 {
                   print(status);
                   showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return new AlertDialog(
                         title: new Text(status),
                         // content: new Text(status),
                       );
                     },
                   );
                 }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.login_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // decoration: myBoxDecoration(),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
