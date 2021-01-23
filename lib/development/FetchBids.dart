import 'package:cloud_firestore/cloud_firestore.dart';

class FetchBids
{
  Future<List<DocumentSnapshot>> fetchBids(String value) async
  {
    List<DocumentSnapshot> l=new List<DocumentSnapshot>();
    await FirebaseFirestore.instance.collection('bids').get()
    .then((snapshot) => {
      snapshot.docs.forEach((doc) {
        if(doc['status'] == value)
          l.add(doc);
      })
    });
    return l;
  }
  Future<List<DocumentSnapshot>> fetchBid(String name) async
  {
    List<DocumentSnapshot> l=new List<DocumentSnapshot>();
    await FirebaseFirestore.instance.collection('bids').get()
        .then((snapshot) => {
      snapshot.docs.forEach((doc) {
        if(doc['nameofbid'] == name)
          l.add(doc);
      })
    });
    return l;
  }
}