import 'package:flutter/material.dart';

class NewNomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NewNome(),
    );
  }
}
class NewNome extends StatefulWidget {
  @override
  _NewNomeState createState() => _NewNomeState();
}

class _NewNomeState extends State<NewNome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
           border: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.red,
              width: 0.1
              )
            ),
            fillColor: Colors.lightBlueAccent,
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}