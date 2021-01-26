import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FetchProfile
{
  Future<List<DocumentSnapshot>> fetchProfile() async
  {
    String uid=FirebaseAuth.instance.currentUser.email;
    List<DocumentSnapshot> l=new List<DocumentSnapshot>();
    await FirebaseFirestore.instance.collection('users').get()
        .then((snapshot) => {
      snapshot.docs.forEach((doc) {
        // print(uid);
        if(doc.id == uid)
          l.add(doc);
      })
    });
    // print(l[0]['name']);
    return l;
  }
  Future<double> getAmount() async
  {
    String uid=FirebaseAuth.instance.currentUser.email;
    List<DocumentSnapshot> l;
    double amount=0;
    await FirebaseFirestore.instance.collection('users').doc(uid).get().then((value){
      amount=value['fund'];
    });
    //   snapshot.docs.forEach((doc) {
    //     // print(uid);
    //     if(doc.id == uid)
    //       {
    //         l.add(doc);
    //       }
    //   })
    // });
    print('$amount Is the current Balance');
    return await amount;
  }
}