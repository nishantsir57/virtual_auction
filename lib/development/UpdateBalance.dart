import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:virtual_auction/development/FetchProfile.dart';

class UpdateBalance
{
  Future<void> updateBalance(String amount)async
  {
    String uid=FirebaseAuth.instance.currentUser.email;
    double previous=await FetchProfile().getAmount();
    double newBalance=double.parse(amount)+previous;
    await FirebaseFirestore.instance.collection('users').doc(uid)
    .update(
      {
        'fund' : newBalance
      }
    );
    return;
  }
}