
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
     home: AlertScreen() ,
    );
  }
}

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(context: context, builder:  (context) {
              return CupertinoAlertDialog(
                title: Text("Yohohohohoh!"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Ok"))
                ],
              );
            });
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}