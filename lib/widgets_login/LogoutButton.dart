import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/Login/loginpage.dart';

class LogoutButton extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Container(
    child: LoginButtonWidget(),
  );
}
}
class LoginButtonWidget extends StatefulWidget{
  @override
  LoginButtonWidgetState createState()=>LoginButtonWidgetState();
  }

class LoginButtonWidgetState extends State<LoginButtonWidget>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1.0,
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  splashColor: Colors.black45,
                  onPressed: (
                      ) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage())
                      );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}
