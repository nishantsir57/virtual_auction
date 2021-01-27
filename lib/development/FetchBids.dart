import 'package:cloud_firestore/cloud_firestore.dart';

class FetchBids
{
  Future<List<DocumentSnapshot>> fetchBids(String value) async
  {
    List<DocumentSnapshot> l=new List<DocumentSnapshot>();
    await FirebaseFirestore.instance.collection('bids').get()
    .then((snapshot) => {
      snapshot.docs.forEach((doc) {
        var now=DateTime.now();
        var start=doc['startTime'].toDate();
        var end=doc['endTime'].toDate();
        if(value == 'active' && now.isAfter(start) && now.isBefore(end))
          {
            l.add(doc);
          }
        else if(value == 'past' && now.isAfter(end))
          {
            l.add(doc);
          }
        else if(value == 'upcoming' && now.isBefore(start))
          {
            l.add(doc);
          }
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
  Future<double> getAmount(String name) async
  {
    List<DocumentSnapshot> l=new List<DocumentSnapshot>();
    await FirebaseFirestore.instance.collection('bids').get()
        .then((snapshot) => {
      snapshot.docs.forEach((doc) {
        if(doc['nameofbid'] == name)
          l.add(doc);
      })
    });
    return l[0]['currentPrice'];
  }
}