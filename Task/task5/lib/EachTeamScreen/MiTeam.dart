import 'package:flutter/material.dart';

import '../WidgitForApp/MiPlayerList.dart';

class MiPlayerList extends StatelessWidget {
  const MiPlayerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("MI",style: TextStyle(color: Colors.black),),
      ),
      body:  MiPlayerLists() ,
    );
  }
}