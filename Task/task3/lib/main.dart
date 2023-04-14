import 'package:flutter/material.dart';
// import 'package:newwproject/SinUPpage.dart';
import 'package:newwproject/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
