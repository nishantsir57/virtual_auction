import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:virtual_auction/development/FetchProfile.dart';

class UpdateBalance
{
  Future<void> updateBalance(String amount)async
  {
    String uid=FirebaseAuth.instance.currentUser.email;
    DocumentSnapshot _doc=await FetchProfile().getAmount();
    String previous=_doc['fund'];
    print('I am adding the fund $previous');
    String newBalance=(double.parse(amount)+double.parse(previous)).toString();
    await FirebaseFirestore.instance.collection('users').doc(uid)
    .update(
      {
        'fund' : newBalance
      }
    );
    return;
  }
}