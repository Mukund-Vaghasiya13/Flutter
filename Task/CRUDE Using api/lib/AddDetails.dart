

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class DetailsTobeAdd extends StatefulWidget {
  String? id;
  String? name;
  String? image;
  String? surname;

  DetailsTobeAdd({this.image,this.name,this.surname,this.id});

  @override
  State<DetailsTobeAdd> createState() => _DetailsTobeAddState();
}

class _DetailsTobeAddState extends State<DetailsTobeAdd> {
  var key = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details to be add"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                initialValue: widget.name,
                decoration: const InputDecoration(
                  hintText: "Enter name",
                ),
                onSaved: (newValue) {
                  setState(() {
                    widget.name = newValue!;
                  });
                },
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Enter value*";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30,),
              TextFormField(
                initialValue: widget.surname,
                decoration: const InputDecoration(
                  hintText: "Enter Surname",
                ),
                onSaved: (newValue) {
                  setState(() {
                    widget.surname = newValue!;
                  });
                },
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Enter value*";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30,),
              TextFormField(
                initialValue: widget.image,
                decoration:const InputDecoration(
                  hintText: "Enter Image Url",
                ),
                onSaved: (newValue) {
                  setState(() {
                    widget.image = newValue!;
                  });
                },
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Enter value*";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                if(key.currentState!.validate()){
                  key.currentState!.save();
                  if(widget.id!.isEmpty)
                  {
                    postData();
                  }
                  else{
                    updateData();
                  }
                  
                  Navigator.pop(context);
                }
              }, child: const Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
  
  void postData() async{
    var url = Uri.parse("https://flutterandiosproject.000webhostapp.com/postApi.php");
    try{
      var response = await http.post(url,body:{"name":widget.name.toString(),"surname":widget.surname.toString(),"image":widget.image.toString(),});
      debugPrint(response.body); 
    }
    catch(e){
      debugPrint(e.toString());
    }
  }
  
  void updateData() async{
    var url = Uri.parse("https://flutterandiosproject.000webhostapp.com/Update.php");
    var response = await http.post(url,body:{"id":widget.id,"name":widget.name.toString(),"surname":widget.surname.toString(),"image":widget.image.toString(),});
  }
  // update:- 
}