import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/Login/loginpage.dart';
import 'package:virtual_auction/widgets_login/newEmail.dart';
import 'package:virtual_auction/development/SendOTP.dart';

class ForgetPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print('I am at Forget Page');
    return ForgetPageWidget();
  }

}

class ForgetPageWidget extends StatefulWidget{
  @override
  ForgetPageWidgetState createState()=>ForgetPageWidgetState();
}


class ForgetPageWidgetState extends State<ForgetPageWidget>{
  static int otpforverification;
  static String email;
  static int otp;
  @override
  Widget build(BuildContext context) {
    print('I am forget state');
    return Material(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black87,
            border: Border.all(
              color: Colors.black,
              width: 10,
            ),
            // borderRadius: BorderRadius.circular(12),
          ),

          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                margin: new EdgeInsets.all(10.0),
                child: Padding(
                  padding: new EdgeInsets.only(top: 170),
                  child: Text(
                    "Forget Password? Don't Worry.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Container(
                  // width: 200,
                  margin: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: NewEmail(),
                  )
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white70,
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // color: Colors.black,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      textColor: Colors.white70,
                      color: Colors.black87,
                      child: Text("Send Reset Link"),
                      onPressed: () async {
                        print('I am entered');
                        await SendOTP().sendOTP(email);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                // width: 200,
                  margin: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white70,
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        // color: Colors.black,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          textColor: Colors.white70,
                          color: Colors.black87,
                          child: Text("Remember Again? Login"),
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>LoginPage()));
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
