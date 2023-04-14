import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinUpPage extends StatefulWidget {

  @override
  State createState() => _State();
}

class _State extends State<SinUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("SinUp Page"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Center(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      "fasset/Image/Sinupimg.jpg",
                      fit: BoxFit.fill,
                      width: 410,
                      height: 200,
                    ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "Username",
                          border: OutlineInputBorder(borderSide: BorderSide())
                        ),
                      ),
                      const SizedBox(
                          height: 20
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Email",
                            labelText: "Email",
                            border: OutlineInputBorder(borderSide: BorderSide())
                        ),
                      ),
                      const SizedBox(
                          height: 20
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            border: OutlineInputBorder(borderSide: BorderSide())
                        ),
                      ),
                      const SizedBox(
                          height: 20
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter City",
                            labelText: "City",
                            border: OutlineInputBorder(borderSide: BorderSide())
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                              onPressed: (){},
                              child: const Text("SinUp"),
                            ),
                        ),
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("You have Account"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
