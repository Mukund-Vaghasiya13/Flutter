import 'package:cooffe_app/homePage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var Check1 = false;
  var Check2 = false;
  var Check3 = false;
  var amt = 0;
  SharedPreferences? Logindata;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LogOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Coffey"),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: [
              CheckboxListTile(
              value: Check1, 
              onChanged: (value){
                setState(() {
                  Check1 = value!;
                  if(value){
                    amt += 100;
                  }else{
                    amt -=100;
                  }
                });
              },
              title: Text("Coffey"),
              subtitle: Text("100"),
              ),
                CheckboxListTile(
              value: Check2, 
              onChanged: (value){
                setState(() {
                  Check2 = value!;
                  if(value){
                    amt += 50;
                  }else{
                    amt -=50;
                  }
                  
                });
              },
              title: Text("Donut"),
              subtitle: Text("50"),
              ),
                CheckboxListTile(
              value: Check3, 
              onChanged: (value){
                setState(() {
                  Check3 = value!;
                  if(value){
                   amt += 150;
                 
                  }
                  else{
                    amt -=150;
                    
                  }
                });
              },
              title: Text("Pizza"),
              subtitle: Text("150"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  
                });
              }, child: Text("Order")),
              SizedBox(
                height: 30,
              ),
               Text("\n Bill - ${amt}"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Logindata!.setBool("Login", false);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          
        },
        child: Text("Logout"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      

    );
  }
  void LogOut() async{
    Logindata = await SharedPreferences.getInstance();
  }
}