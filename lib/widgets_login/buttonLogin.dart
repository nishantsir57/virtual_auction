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
class LoginButton extends StatefulWidget{
  @override
    _LoginButtonState createState()=>_LoginButtonState();
  }

class _LoginButtonState extends State<LoginButton>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200, bottom: 77),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue[100],
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: () {
            Future<String> response = new Login().login(
                InputPhoneState.email, PasswordInputState.password);
            if (response.toString() == 'success') {
              //Pending code

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            }
            else
              {

              }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}