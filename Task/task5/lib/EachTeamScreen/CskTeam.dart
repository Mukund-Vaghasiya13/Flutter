import 'package:flutter/material.dart';
import 'package:iplapp/WidgitForApp/CskPlayerList.dart';

class CskPlayers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Csk",style: TextStyle(color: Colors.black),),
      ),
      body: CskPlayerList(),
    );
  }
}