import 'package:flutter/material.dart';
import 'package:flutter_dev/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var secureText = true;
  var name = "";

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Form(
              key: _formkey,
          child: Column(
            children: [
              Image.network(
                "https://www.kindpng.com/picc/m/273-2738804_php-login-and-authentication-login-hd-png-download.png",
                height: 200,
                width: 350,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      "WELLCOME ${name}",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter Email address";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.indigo,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter Email",
                        label: Text("Email"),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter Password";
                        }
                        if(value.length != 8)
                        {
                          return "Password Must Contain at least 8 character";
                        }
                        return null;
                      },
                      obscureText: secureText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          color: Colors.indigo,
                          onPressed: () {
                            setState(() {
                              if (secureText) {
                                secureText = false;
                              } else {
                                secureText = true;
                              }
                            });
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 5),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter Password",
                        label: Text("Password"),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                          onTap: () {
                            if(_formkey.currentState!.validate())
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (contex)=>SecondScreen()));
                            }
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 2),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            alignment: Alignment.center,
                            height: 40,
                            width: 100,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
