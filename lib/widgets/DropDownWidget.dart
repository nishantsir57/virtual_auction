import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  DropDown({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DropDownState();
  }
}

class DropDownState extends State<DropDown> {
  String _value="D2D Store";
  var item=['D2D Store', 'Other Stores'];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      onTap: openAtCenter,
      // value: _value,
      // iconSize: 15,
      items: [
        DropdownMenuItem(child: Text('D2D Store'), value: 'D2D Store',),
        DropdownMenuItem(child: Text('Other Stores'), value: 'Other Stores',)
      ],
      icon: Icon(Icons.arrow_drop_down_circle),
      elevation: 5,
      // items: <String>["D2D Store", "Other Stores"]
      //     .map<DropdownMenuItem<String>>((String value) =>
      //         DropdownMenuItem(value: value, child: Text(value)))
      //     .toList(),
      onChanged: (value) => setState(
              ()=> _value=value
      ),
    );
  }
  Widget openAtCenter()
  {
    return new AlertDialog(
      content: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
              right: -40.0,
              top: -40.0,
              child: new Container(
                child: new DropdownButton(
                    items: [
                      DropdownMenuItem(child: Text('D2D Store'), value: 'D2D Store',),
                      DropdownMenuItem(child: Text('Other Stores'), value: 'Other Stores',)
                    ],
                    onChanged: null),
              )
          )
        ],
      ),
    );
  }
}