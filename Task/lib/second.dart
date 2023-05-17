import 'package:database/DataBasHelper.dart';
import 'package:flutter/material.dart';

class DataBAseCOn extends StatefulWidget {
  const DataBAseCOn({super.key});

  @override
  State<DataBAseCOn> createState() => _DataBAseCOnState();
}

class _DataBAseCOnState extends State<DataBAseCOn> {
  var name = "";
  var data; 
   var a = dataBaseHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) { setState(() {
                  name = value;
                });
              }
              ),
              ElevatedButton(onPressed: ()async{
               
                var res = a.Insert({"name":name});
                if(res == 0)
                {
                  print("Fail");
                }
                else{
                  print("Pass");
                }
              }, child: Text("CLick")),
            ],
          ),
        ),
      ),
    );
  }
}