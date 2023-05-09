import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowAlertOnClick(),
    );
  }
}

class ShowAlertOnClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text("hello"),
                  content: Text("these is message"),
                  actions: [
                    TextButton(onPressed:(){
                      Navigator.pop(context);
                    }, child: Text("Ok"))
                  ],
                );
              });
        },
        child: Text("Click"),
      )),
    );
  }
}
