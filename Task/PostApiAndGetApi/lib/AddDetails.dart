

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class DetailsTobeAdd extends StatefulWidget {
  const DetailsTobeAdd({super.key});

  @override
  State<DetailsTobeAdd> createState() => _DetailsTobeAddState();
}

class _DetailsTobeAddState extends State<DetailsTobeAdd> {
  var key = GlobalKey<FormState>();
  var name = "";
  var surname = "";
  var image = "";
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
                initialValue: name,
                decoration: const InputDecoration(
                  hintText: "Enter name",
                ),
                onSaved: (newValue) {
                  setState(() {
                    name = newValue!;
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
                initialValue: surname,
                decoration: const InputDecoration(
                  hintText: "Enter Surname",
                ),
                onSaved: (newValue) {
                  setState(() {
                    surname = newValue!;
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
                initialValue: image,
                decoration:const InputDecoration(
                  hintText: "Enter Image Url",
                ),
                onSaved: (newValue) {
                  setState(() {
                    image = newValue!;
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
                  postData();
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
      var response = await http.post(url,body:{"name":name.toString(),"surname":surname.toString(),"image":image.toString(),});
      debugPrint(response.body); 
    }
    catch(e){
      debugPrint(e.toString());
    }
  }
}
//https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOiklJfQ4QwwX04HN6PQsHa0eHk1n_PHq9PQ&usqp=CAU