import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

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
      home: PhoneCallInFlutter(),
    );
  }
}

class PhoneCallInFlutter extends StatefulWidget {
  const PhoneCallInFlutter({Key? key}) : super(key: key);

  @override
  State<PhoneCallInFlutter> createState() => _PhoneCallInFlutterState();
}

class _PhoneCallInFlutterState extends State<PhoneCallInFlutter> {
  var number = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone call"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    number = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                _callNumber(number);
              }, child: const Icon(Icons.phone)
              )
            ],
          ),
        ),
      ),
    );
  }

  _callNumber(String number) async {
    //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    print(res);
  }
}