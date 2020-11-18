import 'package:flutter/material.dart';

import 'design/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Auction',

      home: LoginPage(),
    );
  }
}
