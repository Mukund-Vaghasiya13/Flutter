import 'package:flutter/material.dart';
import 'dart:convert';
import 'AddDetails.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of data"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailsTobeAdd()));
        },
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          var url = Uri.parse(
              "https://flutterandiosproject.000webhostapp.com/viewdataofpost.php");
          var response = await http.get(url);
          setState(() {
            list = jsonDecode(response.body);
          });
        },
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) {
              return Card(
                elevation: 0,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(list[i]["image"]),
                      maxRadius: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      list[i]["name"] + " " + list[i]["surname"],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
