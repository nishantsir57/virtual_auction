import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';

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
        if(BidsListViewState.type1 == 'active' && now.isAfter(start) && now.isBefore(end))
          {
            l.add(doc);
          }
        else if(BidsListViewState.type1 == 'past' && now.isAfter(end))
          {
            l.add(doc);
          }
        else if(BidsListViewState.type1 == 'upcoming' && now.isBefore(start))
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
    String value=l[0]['currentPrice'].toString();
    return double.parse(value);
  }
}