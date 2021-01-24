import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/ProfilePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/Home_CardView.dart';
import 'package:virtual_auction/development/FetchProfile.dart';

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
              onPressed: () {
                Navigator.push(
                  context,


                  //TODO HERE put help section
                  MaterialPageRoute(builder: (context) => null),
                );
              },
            ),
          ],
        ),
        body: new CardView(),
      ),
    );
  }
}
