import 'dart:collection';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signup
{
  Future<String> signup(var email, var password, var name, var adhar, var mobile, var address) async
  {
    FirebaseAuth auth=FirebaseAuth.instance;

    try{
       await auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch (e)
    {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return "The account already exists for that email.";
      }
    }
    catch(e)
    {

    }

    FirebaseFirestore firebase=FirebaseFirestore.instance;
    DocumentReference ref= firebase.collection('users').doc(email);
    HashMap<String, Object> map=new HashMap();
    map['name']=name;
    map['email']=email;
    map['adhar']=adhar;
    map['mobile']=mobile;
    map['address']=address;
    map['current_balance']=0.0;
    map['purchased_products']=null;
    map['participated']=null;
    ref.set(map);
    return "success";
  }
}