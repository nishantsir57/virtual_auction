import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/NewPasswordPage.dart';
import 'package:virtual_auction/design/loginpage.dart';
import 'package:virtual_auction/widgets_login/newEmail.dart';

class ForgetPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ForgetPageWidget();
  }

}

class ForgetPageWidget extends StatefulWidget{
  @override
  ForgetPageWidgetState createState()=>ForgetPageWidgetState();
}


class ForgetPageWidgetState extends State<ForgetPageWidget>{
  static String otpforverification;
  @override
  Widget build(BuildContext context) {

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
                      child: Text("Send OTP"),
                      onPressed: () {

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
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Container(
                      color: Colors.white10,
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        onChanged: (value) => otpforverification=value,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlueAccent,
                                  width: 0.5
                              )
                          ),
                          fillColor: Colors.lightBlueAccent,
                          labelText: 'Enter OTP*',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
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
                      child: Text("Reset Password"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>NewPasswordPage()
                        ));
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
