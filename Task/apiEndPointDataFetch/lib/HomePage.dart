import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news_app/Modle.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//https://jsonplaceholder.typicode.com/posts
// this is dumy data[Api endpoint]

class _HomeScreenState extends State<HomeScreen> {
  var listOfData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LodeData();
  }

// it will take time
  void LodeData() async {
    const url = "https://jsonplaceholder.typicode.com/posts";
    final uri = Uri.parse(url); // Converting string to url
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
      setState(() {
        listOfData =
            List.from(jsonData).map((e) => ApiData.fromJson(e)).toList();
      });
      print("List:${listOfData}");
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: listOfData.length,
                      itemBuilder: (context,index){
                        return ListViewOfData(item:listOfData[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Text(
      "Random",
      style: Theme.of(context).textTheme.labelLarge,
    );
  }
}

class ListViewOfData extends StatefulWidget {

  ApiData item;

  ListViewOfData({required this.item});

  @override
  State<ListViewOfData> createState() => _ListViewOfDataState();
}

class _ListViewOfDataState extends State<ListViewOfData> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 0,
      child: ListTile(
        title: Text(
          widget.item.title,style: Theme.of(context).textTheme.titleLarge,
          ),
          subtitle: Text(widget.item.body,style: Theme.of(context).textTheme.titleSmall,),
        ),
    );
  }
}
