import 'package:flutter/material.dart';
import 'package:projectname/secondpage.dart';

class Homepagess extends StatelessWidget {
  const Homepagess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Firstpage"),
            backgroundColor: Colors.deepOrange
        ),
        body:Center(
        child: ElevatedButton(
          child: const Text("Click"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>secondpagedis()));
            },
        ),
      ),
    );
  }

}
