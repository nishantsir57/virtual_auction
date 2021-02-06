import 'dart:collection';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virtual_auction/widgets_login/newEmail.dart';
import 'package:virtual_auction/widgets_login/password.dart';

class Signup
{
  static String _email;
  static String _pass;
  static String _name;
  static String _adhar;
  static String _phone;
  get adhar => _adhar;
  set email(String e) => _email=e;
  set password(String p) => _pass=p;
  set name(String n) => _name=n;
  set adhar(String a) => _adhar=a;
  set phone(String p) => _phone=p;
  // Future<void> signup(var email, var password, var name, var adhar, var mobile) async
  Future<String> signup() async
  {
    print('Creating User....');
    try{
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email,
          password: _pass,
      );
    } on FirebaseAuthException catch (e)
    {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for given email.';
        // print("The account already exists for that email.");
      }
    }
    catch(e)
    {
      print(e);
    }
    CollectionReference user = FirebaseFirestore.instance.collection('users');

      await user
          .doc(_email).set({
        'email': _email, // John Doe
        'password': _pass, // Stokes and Sons
        'name' : _name,
        'adhar' : _adhar,
        'phone' : _phone,
        'fund' : '0'
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    print('User Created Successfully');
    return 'success';
  }
}