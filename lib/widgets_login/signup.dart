import 'package:flutter/material.dart';

class SingUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingUp(),
    );
  }
}
class SingUp extends StatefulWidget {
  @override
  SingUpState createState() => SingUpState();
}

class SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Sign up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}