import 'package:flutter/material.dart';
import 'package:iplapp/WidgitForApp/TeamsWidgit.dart';

class MyHomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teams"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: TeamsList(), 
    );
  }
}

//