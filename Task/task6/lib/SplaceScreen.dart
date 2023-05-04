import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'homePage.dart';

class splacePage extends StatefulWidget {
  

  @override
  State<splacePage> createState() => _splacePageState();
}

class _splacePageState extends State<splacePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.network("https://assets2.lottiefiles.com/packages/lf20_1oz5a0vb.json"),
      ),
    );
  }
}