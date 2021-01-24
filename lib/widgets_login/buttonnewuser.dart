import 'package:flutter/material.dart';
import 'package:virtual_auction/development/Signup.dart';
import 'package:virtual_auction/widgets_login/inputPhone.dart';
import 'package:virtual_auction/widgets_login/password.dart';

import '../design/home.dart';

class ButtonNewUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonNewUser(),
    );
  }
}
class ButtonNewUser extends StatefulWidget {
  @override
  ButtonNewUserState createState() => ButtonNewUserState();
}


class ButtonNewUserState extends State<ButtonNewUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 20),
      child: Container(
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
            color: Colors.black, borderRadius: BorderRadius.circular(30)),
        child: FlatButton(
          onPressed: () async{
            String status=await new Signup().signup();
            if(status == 'success') {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home())
              );
            }
            else
              {
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
                'SignUp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.app_settings_alt_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}