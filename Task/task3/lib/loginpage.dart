import 'package:flutter/material.dart';
import 'package:newwproject/SinUPpage.dart';

class loginpage extends StatefulWidget {

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        backgroundColor: Colors.indigoAccent,
      ),
      body:SingleChildScrollView(
        child : Form(
          child: Center(
            child: Column(children: [
              SizedBox(height:10),
              Image.asset("fasset/Image/Login.jpg",
                fit: BoxFit.fill,
                width: 400,
              ),
              const Padding(padding:EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              child: Text("WELLCOME",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "Name",
                      border: OutlineInputBorder(borderSide:BorderSide())

                    ),
                  ),
                  const SizedBox(
                    height: 20
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                ],
              )
            ),
              Padding(padding: EdgeInsets.all(30),
                  child: Material(
                    animationDuration: Duration(seconds: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigoAccent,
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: 100,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
                  )
              ),
              
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SinUpPage()));},
                child: Text("Create new account")
              )
            ],),
          ),
        ),
      )
    );
  }
}
