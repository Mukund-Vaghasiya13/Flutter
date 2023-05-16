import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToolBarAPP(),
    );
  }
}

class ToolBarAPP extends StatelessWidget {
  const ToolBarAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return CupertinoAlertDialog(
                title: Text("Hello"),
                actions: [
                  TextButton(onPressed:(){
                    Navigator.pop(context);
                  }, child: Text("Ok"))
                ],
              );
            });
          }, icon: Icon(CupertinoIcons.share)),
          SizedBox(
            width: 30,
          ),
          IconButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return CupertinoAlertDialog(
                title: Text("Hello"),
                actions: [
                  TextButton(onPressed:(){
                    Navigator.pop(context);
                  }, child: Text("Ok"))
                ],
              );
            });
          }, icon: Icon(CupertinoIcons.person_2))

        ],
      ),
    );
  }
}