import 'package:flutter/material.dart';
import 'package:iplapp/WidgitForApp/CskPlayerList.dart';
import 'package:iplapp/WidgitForApp/GTPlayerList.dart';

class GujtitanPlayers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("GT",style: TextStyle(color: Colors.black),),
      ),
      body: GTTeamPlayer(),
    );
  }
}