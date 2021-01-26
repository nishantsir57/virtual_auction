
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PutBid
{
  Future<void> putBid(double amount, String bidName) async
  {
    String email=await FirebaseAuth.instance.currentUser.email;
    print('I am updating $bidName and amount is $amount');
    await FirebaseFirestore.instance.collection('bids').doc(bidName).update(
      {
        'email' : email,
        'currentPrice' : amount
      }
    );
    return;
  }
}