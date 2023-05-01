import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iplapp/HomeScreen.dart';

class MySplaceScreen extends StatefulWidget {
  @override
  State<MySplaceScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MySplaceScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network("https://www.jagranimages.com/images/newimg/21082020/21_08_2020-ipl_logo_20650553.jpg"),
      ),
    );
  }
}