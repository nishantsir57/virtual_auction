import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:upi_india/upi_india.dart';
import 'package:virtual_auction/development/FetchProfile.dart';

class UpdateBalance
{
  static int id=1;
  Future<void> updateBalance(String amount)async
  {
    String uid=FirebaseAuth.instance.currentUser.email;
    DocumentSnapshot _doc=await FetchProfile().getAmount();
    String previous=_doc['fund'];
    print('I am adding the fund $previous');
    UpiIndia _upiIndia = UpiIndia();
    UpiApp app = UpiApp.phonePe;
    String newBalance=(double.parse(amount)+double.parse(previous)).toString();
    await _upiIndia.startTransaction(
      app: app, //  I took only the first app from List<UpiApp> app.
      receiverUpiId: '9616161825@apl', // Make Sure to change this UPI Id
      receiverName: 'Nazma Parveen',
      transactionRefId: id.toString(),
      transactionNote: 'Not actual. Just an example.',
      amount: double.parse(amount),
    );
    await FirebaseFirestore.instance.collection('users').doc(uid)
    .update(
      {
        'fund' : newBalance
      }
    );
    id++;
    return;
  }
}