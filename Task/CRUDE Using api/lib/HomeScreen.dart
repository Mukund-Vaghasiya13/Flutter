import 'package:flutter/material.dart';
import 'dart:convert';
import 'AddDetails.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List? list;
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
            itemCount: list?.length ?? 0,
            itemBuilder: (context, i) {
              return Card(
                elevation: 0,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(list![i]["image"] ?? "https://img.freepik.com/free-vector/404-error-with-landscape-concept-illustration_114360-7898.jpg"),
                      maxRadius: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      list?[i]["name"] + " " + list?[i]["surname"],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ElevatedButton(onPressed: (){
                            deletData(list?[i] ?? "");
                          }, child: const Icon(Icons.delete)),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsTobeAdd(id: list![i]["id"],name: list![i]["name"],surname: list![i]["surname"],image: list![i]["image"],))));
                          }, child: const Icon(Icons.edit))
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );

  }
  
  void deletData(dynamic index) async{
    var url = Uri.parse("https://flutterandiosproject.000webhostapp.com/delet.php");
    var response =  await http.post(url,body:{"id":index["id"]});
    setState(() {
      list?.remove(index);
    });
  }
}
