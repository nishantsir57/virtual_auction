import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/ActiveBids.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';

class DateTime extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DateTimeView(start, end);
  }
  String start, end;
  DateTime(String start, String end)
  {
    this.start=start;
    this.end=end;
  }
}

class DateTimeView extends StatefulWidget {
  String start, end;
  DateTimeView(String start, String end)
  {
    this.start=start;
    this.end=end;
  }
  @override
  DateTimeViewState createState()=>DateTimeViewState(start, end);
}

class DateTimeViewState extends State<DateTimeView>{
  String start, end;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 120,
      child: new Column(
        children: [
          // BiddingPageDate(),
          BiddingPageTime(start, end)
        ],
      ),
    );
  }
  DateTimeViewState(String start, String end)
  {
    this.start=start;
    this.end=end;
  }
}
//
// Widget BiddingPageDate()
// {
//   return Container(
//     // decoration: myBoxDecoration(),
//     child: Padding(
//       padding: const EdgeInsets.all(3.0),
//       child: Center(
//         child: Row(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 child: Icon(
//                   Icons.date_range,
//                   color: Colors.black38,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(3.0),
//               child: Text(BidsListViewState.dateOfBid,
//                 textAlign: TextAlign.start,
//                 style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontStyle: FontStyle.italic,
//                     fontSize: 15,
//                     letterSpacing: 1,
//                     wordSpacing: 2,
//                     color: Colors.black
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

Widget BiddingPageTime(String start, String end)
{
  return Container(
    // decoration: myBoxDecoration(),
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Icon(
                  Icons.timer,
                  color: Colors.black38,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(start + " to ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    // letterSpacing: 3,
                    // wordSpacing: 6,
                    color: Colors.black
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(end,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    // letterSpacing: 3,
                    // wordSpacing: 6,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

