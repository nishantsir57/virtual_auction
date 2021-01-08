import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_auction/design/ActiveBids.dart';

class ItemDesc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ItemDescView();
  }
}

class ItemDescView extends StatefulWidget {
  @override
  ItemDescViewState createState()=>ItemDescViewState();
}

class ItemDescViewState extends State<ItemDescView>{
  static String itemDescription;
  @override
  Widget build(BuildContext context) {
   return Card(
     elevation: 1,
     child: Container(
       decoration: BoxDecoration(
         border: Border.all(color: Colors.black26),
         shape: BoxShape.rectangle
       ),
       child: itemDescriptionWidget(itemDescription="Image description: a detailed explanation of an image that provides textual access to visual content; most often used for digital graphics online and in digital files; can be used as alt text in coding to provide access to more complete information."),
     ),
   );
  }
}
Widget itemDescriptionWidget(String namedata){
  return Container(
    // decoration: myBoxDecoration(),
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text(namedata,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 16,
            letterSpacing: 0.2,
            wordSpacing: 1.5,
            color: Colors.black
        ),
      ),
    ),
  );
}

