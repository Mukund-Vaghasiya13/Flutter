import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_sms/flutter_sms.dart';

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
        primarySwatch: Colors.deepPurple,
      ),
      home:SMSAndCall(),
    );
  }
}

class SMSAndCall extends StatefulWidget {
  const SMSAndCall({Key? key}) : super(key: key);

  @override
  State<SMSAndCall> createState() => _SMSAndCallState();
}

class _SMSAndCallState extends State<SMSAndCall> {
  var a = "";
  var b = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("SMS Call"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Enter number"),
                onChanged: (value){
                  setState(() {
                    a = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Message"),
                onChanged: (value){
                  setState(() {
                    b = value;
                  });
                },
              ),
              ElevatedButton(onPressed: (){
                  _callNumber(a);
              }, child: const Icon(Icons.phone)),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                  _sendSMS(b,[a]);
              }, child: const Icon(Icons.sms)),
            ],
          ),
        ),
      ),
    );
  }
  _callNumber(String no) async{
    bool? res = await FlutterPhoneDirectCaller.callNumber(no);
    return res;
  }
  void _sendSMS(String a,List<String> no) async {
    String _result = await sendSMS(message: a, recipients: no)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }
}

