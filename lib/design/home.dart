import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/ProfilePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/Home_CardView.dart';
import 'package:virtual_auction/development/FetchProfile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:virtual_auction/design/loginpage.dart';

class Home extends StatefulWidget{
  @override
  HomeState createState()=> HomeState();
}

class HomeState extends State<Home>{
  static List<DocumentSnapshot> _doc;
  get doc => _doc;
  @override
  Widget build(BuildContext context) {
    return getDetails();
  }

  Widget getDetails()
  {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.account_circle),
            onPressed: () async{
              _doc=await new FetchProfile().fetchProfile();
              if(_doc.length > 0)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              else
                print(doc.length);
            },
          ),
          backgroundColor: Colors.redAccent,
          title: Center(
              child: Text("Virtual Auction",
              style: TextStyle(
                fontSize: 20,
                  letterSpacing: 3,
                  wordSpacing: 6,
                  color: Colors.black
              ),
                textAlign: TextAlign.left,
              )
          ),
          actions: [
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.live_help),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                // showAlertDialog(context);
              },
            ),
          ],
        ),
        body: new CardView(),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Row(
      children: [
        // Text(""),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(Icons.thumb_up,color: Colors.blue,),
        )
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },

  );
  AlertDialog alert = AlertDialog(
    elevation: 20,
    backgroundColor: Colors.black,
    title: Text("Requires Help?\n",
      style: TextStyle(
        color: Colors.white,
        wordSpacing: 2,
        letterSpacing: 1.6,
      ),
    ),
    content: Text("Call us at 1234567890\n\nMail us at help@healthAssistant.com",
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      okButton,

    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

