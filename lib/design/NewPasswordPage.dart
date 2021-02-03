import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/loginpage.dart';
import 'package:virtual_auction/widgets_login/password.dart';

class NewPasswordPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return NewPasswordPageWidget();
  }

}

class NewPasswordPageWidget extends StatefulWidget{
  @override
  NewPasswordPageWidgetState createState()=>NewPasswordPageWidgetState();
}


class NewPasswordPageWidgetState extends State<NewPasswordPageWidget>{
  // static String ;
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
                    "Enter New Password",
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        color: Colors.white10,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          // onChanged: (value) => =value,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.greenAccent,
                                    width: 0.1
                                )
                            ),
                            labelText: 'Enter New Password*',
                            labelStyle: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
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
                        onChanged: (value) => null,                                   //todo here
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
                          labelText: 'Confirm New Password*',
                          labelStyle: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  )
              ),
              Container(
                margin: new EdgeInsets.only(top: 20),
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
                      child: Text("Confirm"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>LoginPage()
                        ));
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
