
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/Widgets_bidding_page/AddFundsButton.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';
import 'package:virtual_auction/widgets_login/inputPhone.dart';
import 'package:virtual_auction/widgets_login/newName.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ProfilePageWidget();
  }
}

class ProfilePageWidget extends StatefulWidget{
  @override
  ProfilePageWidgetState createState()=>ProfilePageWidgetState();
}

class ProfilePageWidgetState extends State<ProfilePageWidget>{
  static String profilePicutrePath="https://i.pinimg.com/originals/eb/2c/14/eb2c14c4effe7277d069c41dd482ab10.jpg";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
              child: Text("Profile",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 3,
                    wordSpacing: 6,
                    color: Colors.black
                ),)
          ),
        ),
        body: new Container(
          alignment: Alignment.centerLeft,
          decoration: mBoxDecoration(),
          child: ListView(
              children: <Widget>[
                profilePicture("https://i.pinimg.com/originals/eb/2c/14/eb2c14c4effe7277d069c41dd482ab10.jpg"),
                dataOfPerson("Name: Take Name data from Name Variable"),
                dataOfPerson("Email: from NewEmail widget"),
                dataOfPerson("Phone: from inputPhone Widget"),
                Container(
                    height: 55,
                    child: Card(
                        child: accountBalance("Account Balance: 101")
                    )
                ),
                Container(
                  margin: EdgeInsets.all(3.0),
                    child: addfunds(AddFundsViewState.addAmountValue))
                // dataOfPerson("personData")
              ]
          ),
        ),
      ),
    );
  }
}


Widget profilePicture(String ppPath){
  return Container(
    alignment: Alignment.center,
    decoration: mBoxDecoration(),
    // margin: new EdgeInsets.only(top: 2),
    height: 200,
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        // decoration: myBoxDecoration(),
        child: Image.network(ppPath,
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,),
      ),
    ),
  );
}

Widget dataOfPerson(String personData){
  return Container(
    height: 55,
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Card(

        child: Text(
          personData,
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 2,
            wordSpacing: 2,
            fontSize: 16,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    ),
  );
}
BoxDecoration mBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1.2,
    ),
  );
}
