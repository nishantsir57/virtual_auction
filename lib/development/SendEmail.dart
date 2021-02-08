
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mailer2/mailer.dart';
import 'package:virtual_auction/development/FetchBids.dart';

class SendEmail
{
  Future<void> sendEmail() async
  {
    print('Preparing Email to Send');
    var options = new GmailSmtpOptions()
      ..username = 'parveennazma71@gmail.com'
      ..password = 'Project@123'; // Note: if you have Google's "app specific passwords" enabled,
    // you need to use one of those here.
    List<DocumentSnapshot> l=await FetchBids().fetchAllBids();
    String email;
    String name;
    var price;
    await l.forEach((doc) async{
      var now=DateTime.now();
      var end=doc['endTime'].toDate();
      if(now.isAfter(end))
        {
          email=doc['email'];
          name=doc['nameofbid'];
          price=doc['currentPrice'];
          var emailTransport = await new SmtpTransport(options);
          print('Name is $name , $email , $price');
          // Create our mail/envelope.
          var envelope = new Envelope()
            ..from = 'parveennazma71@gmail.com'
            ..recipients.add(email)
            ..subject = 'Auctionn Winning Email'
            ..text = 'Congrats You have won the auction $name at price $price';

          // Email it.
          await emailTransport.send(envelope)
              .then((envelope) => print('Email sent!'))
              .catchError((e) => print('Error occurred: $e'));
          print('email sent to $email');
        }

    });
    // How you use and store passwords is up to you. Beware of storing passwords in plain.

    // Create our email transport.


  }
}