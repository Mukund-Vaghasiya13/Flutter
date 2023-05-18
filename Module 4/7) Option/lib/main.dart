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
      home: OptionMenue(),
      debugShowCheckedModeBanner: false,
    );
  }
}
enum Datas{
  profile,
  logout,
}

class OptionMenue extends StatelessWidget {
  var Item = Datas.profile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: Datas.profile,
                  child: Text("Profile"),
                ),
                const PopupMenuItem(
                  value: Datas.logout,
                  child: Text("LogOut"),
                )
              ];
            },
            onSelected: (value) {
              if(value == Datas.profile)
              {
                print("Profile");
              }
              else{
                print("Logout");
              }
            },
          )
        ],
      ),
    );
  }
}
