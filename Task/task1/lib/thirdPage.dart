import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text("Third Page",style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
