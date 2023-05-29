import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// https://jsonplaceholder.typicode.com/posts
void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostApiExample(),
    );
  }
}

class PostApiExample extends StatefulWidget {
  const PostApiExample({super.key});

  @override
  State<PostApiExample> createState() => _PostApiExampleState();
}

class _PostApiExampleState extends State<PostApiExample> {

  void postdata() async
  {
    try{
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      var response = await http.post(url,body: {"title":"mukund","body":"Learning SwiftUI","userId":11.toString()});
      debugPrint(response.body);
    }catch(e){
      debugPrint(e.toString());
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: ElevatedButton(
        onPressed: (){
          postdata();
        },
        child: Text("Click"),
      ),
    );
  }
}
