
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
      home: DatePickerInFlutter(),
    );
  }
}


class DatePickerInFlutter extends StatefulWidget {

  @override
  State<DatePickerInFlutter> createState() => _DatePickerInFlutterState();
}

class _DatePickerInFlutterState extends State<DatePickerInFlutter> {
DateTime? Date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async{
                 await showDatePicker(
                  context: context, 
                  initialDate: DateTime.now(), 
                  firstDate: DateTime(2004), 
                  lastDate: DateTime.now(),
                  
                ).then((value) => setState(() {
                  Date = value;
                }),
                );
              },
             child: Text("Click")
            ),
            Text("${Date?.day}-${Date?.month}-${Date?.year}")
          ],
        ),
      ),
    );
  }
}