import 'package:flutter/material.dart';
import 'package:projectname/thirdPage.dart';

class secondpagedis extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("Click",style: TextStyle(fontSize: 30,color: Colors.red)),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
          },
        ),
      ),
    );
  }
}
