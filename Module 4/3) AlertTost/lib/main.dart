import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlertWithTost(),
    );
  }
}

class AlertWithTost extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title:const Text("Alert with tost message"),
      ),
      body: Center(
        child:Column(
          children: [
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Hello"),
                    actions: [
                      ElevatedButton(onPressed: (){
                        showtost("Positive");
                        Navigator.pop(context);
                      }, child:const Text("Positive")),
                      ElevatedButton(onPressed: (){
                        showtost("Netural");
                        Navigator.pop(context);
                      }, child:const Text("Netrual")),
                      ElevatedButton(onPressed: (){
                        showtost("Negative");
                        Navigator.pop(context);
                      }, child:const Text("Negative")),
                    ],
                  );
              });
            }, child:const Text("Click")),
          ],
        )
      ),
    );
  }
  void showtost(String data)
  {
    Fluttertoast.showToast(
        msg: data,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}


