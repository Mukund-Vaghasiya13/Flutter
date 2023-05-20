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
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
 

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var no1 = "";
  var no2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value){
                  setState(() {
                    no1 = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              TextField(
                 onChanged: (value){
                  setState(() {
                    no2 = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  var sum = int.parse(no1) + int.parse(no1);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(sum: sum,)));
                },
                child: Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  var sum = 0;
  SecondScreen({required this.sum});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body:  Center(
        child: Text("Sum is $sum",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}