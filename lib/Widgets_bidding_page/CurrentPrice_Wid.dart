import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/widgets/DescriptionOfBid.dart';
import 'package:virtual_auction/widgets/ListView_Bids.dart';

class CurrentPrice {
  String _price;
  Widget currentPrice(String price) {
    return Card(
      color: Colors.deepOrangeAccent,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          // decoration: CurrentPrice_decoration(),
          alignment: Alignment.center,
          height: 40,
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "Current Price: " + price,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
                wordSpacing: 2,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration CurrentPrice_decoration() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.red,
        width: 2,
      ),
    );
  }

}
// class CurrentPriceState extends State<CurrentPrice>
// {
//   @override
//   Widget build(BuildContext context) {
//     String price =new DescriptionOfBidState().price;
//     return Card(
//       color: Colors.deepOrangeAccent,
//       elevation: 10,
//       child: Padding(
//         padding: const EdgeInsets.all(1.0),
//         child: Container(
//           // decoration: CurrentPrice_decoration(),
//           alignment: Alignment.center,
//           height: 40,
//           child: FlatButton(
//             onPressed: () {},
//             child: Text(
//               "Current Price: " + price,
//               style: TextStyle(
//                 color: Colors.black,
//                 letterSpacing: 2,
//                 wordSpacing: 2,
//                 fontSize: 20,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
// }