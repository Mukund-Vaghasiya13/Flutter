import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  NavBarInBottom(),
    );
  }
}

class NavBarInBottom extends StatefulWidget {

  @override
  State<NavBarInBottom> createState() => _NavBarInBottomState();
}

class _NavBarInBottomState extends State<NavBarInBottom> {
  var CurretnIndex = 0;
  var values = "Home";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar"),
      ),
      body: Center(
        child: Text(values),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurretnIndex,
        onTap: (value) {
          setState(() {
            CurretnIndex = value;
            if(CurretnIndex == 0)
            {
              values = "Home";
            }
            else if(CurretnIndex == 1)
            {
              values = "Profile";
            }
            else{
              values = "Setting";
            }
          });
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting")
        ],
      ),
    );
  }
}