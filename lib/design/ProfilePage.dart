
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/Widgets_bidding_page/AddFundsButton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virtual_auction/design/home.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';
import 'package:virtual_auction/widgets_login/inputPhone.dart';
import 'package:virtual_auction/widgets_login/newName.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Stream users = FirebaseFirestore.instance.collection('users').snapshots();
    return StreamBuilder<QuerySnapshot>(
      stream: users,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ProfilePageWidget();
      },
    );
    // return ProfilePageWidget();
  }
}

class ProfilePageWidget extends StatefulWidget{
  @override
  ProfilePageWidgetState createState()=>ProfilePageWidgetState();
}

class ProfilePageWidgetState extends State<ProfilePageWidget>{

  bool _isEditingText = false;
  TextEditingController _editingController,_editingController_gender;
  String initialText = "Initial Text";
  String gender = "Gender";

  static String profilePicutrePath="https://i.pinimg.com/originals/eb/2c/14/eb2c14c4effe7277d069c41dd482ab10.jpg";
  List<DocumentSnapshot> _doc=new HomeState().doc;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: initialText);
    _editingController_gender = TextEditingController(text: gender);
  }
  @override
  void dispose() {
    _editingController.dispose();
    _editingController_gender.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String _name="_doc[0]['name']";
    String _email="_doc[0]['email']";
    String _phone="doc[0]['phone']";
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
                dataOfPerson("Name: $_name"),
                dataOfPerson("Email: $_email"),
                dataOfPerson("Phone: $_phone"),
                _editTitleTextField(),
                _editTitleTextField_gender(),
                // _editTitleTextField("Gender: $_gender"),
                Container(
                    height: 55,
                    child: Card(
                        child: accountBalance()
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

  Widget _editTitleTextField() {
    if (_isEditingText)
      return Container(
        height: 55,
        child: Center(
          child: TextField(
            onSubmitted: (newValue) {
              setState(() {
                initialText = newValue;
                _isEditingText = false;
              });
            },
            autofocus: true,
            controller: _editingController,
          ),
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingText = true;
        });
      },
      child: Text(
        "Age:\t\t\t\t" + initialText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _editTitleTextField_gender() {
    if (_isEditingText)
      return Container(
        height: 55,
        child: Center(
          child: TextField(
            onSubmitted: (newValue) {
              setState(() {
                gender = newValue;
                _isEditingText = false;
              });
            },
            autofocus: true,
            controller: _editingController_gender,
          ),
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingText = true;
        });
      },
      child: Text(
        "Gender:\t\t\t\t" + gender,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
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

