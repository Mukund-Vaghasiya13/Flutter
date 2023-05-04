import 'package:cooffe_app/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    UserIsLogedInOrnot();
  }

  @override
  var BoolData = true;
  var FormKey = GlobalKey<FormState>();
  SharedPreferences? Logindata;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: FormKey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.network("https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg",width: 300,height: 200,),
                  SizedBox(height: 20,),
                  const Text(
                    "Wellcome",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "UserName",
                      suffixIcon: Icon(Icons.person),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 3.0,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.blueAccent,
                          width: 2.0,
                        )
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Enter Username";
                      }
                      else
                      {
                        return null;
                      }
                      
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: BoolData ,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      suffixIcon: IconButton(
                      onPressed:(){
                        setState(() {
                          if(BoolData){
                            BoolData = false;
                          }
                          else{
                            BoolData = true;
                          }
                        });
                      },
                      icon: Icon(Icons.remove_red_eye),
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 3.0,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.blueAccent,
                          width: 2.0,
                        )
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Enter Password";
                      }
                      else if(value.length != 6){
                        return "Password atleast cointain 6 character";
                      }
                      else{
                        return null;
                      }
                      
                    },
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: (){
                        if(FormKey.currentState!.validate()){
                          Logindata?.setBool("Login", true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                        }
                        
                      }, 
                      child: Text("Login"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
  void UserIsLogedInOrnot() async{
    Logindata = await SharedPreferences.getInstance();
    if(Logindata!.getBool("Login") ?? false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

    }
  }
}