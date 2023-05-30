
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CatalogApp"),
      ),
      body: FutureBuilder<List>(
        future: getdata(),
        builder: (context, snapshot) {
          if(snapshot.hasError)
          {
            print("Error");
          }
          if(snapshot.hasData)
          {
            return Itemsinlist(list: snapshot.data!);
          }
          return CircularProgressIndicator();
        },
       ),
    );
  }
  Future<List> getdata() async
  {
    var response = await http.get(Uri.parse("https://vyasprakruti.000webhostapp.com/mobileapi/view.php"));
    return jsonDecode(response.body);
  }
}

class Itemsinlist extends StatefulWidget {
  List list;
  Itemsinlist({required this.list});

  @override
  State<Itemsinlist> createState() => _ItemsinlistState();
}

class _ItemsinlistState extends State<Itemsinlist> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: widget.list.length,itemBuilder: (BuildContext context, int index) { 
      return ListTile(
        title:Text(widget.list[index]["product_name"]),
        trailing: Text(widget.list[index]["product_price"]),
      );
     },);
  }
}