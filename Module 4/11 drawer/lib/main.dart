
import 'package:flutter/cupertino.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: ContextMenuInFlutter(),
    );
  }
}

class ContextMenuInFlutter extends StatelessWidget {
  const ContextMenuInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWeXDqSDlb-oAGpYPEwFukwlAJWtv8bCbACQ&usqp=CAU"),
              ),
              accountEmail: Text("OnePiece1061@gmail.com"),
              accountName: Text("Mukund"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home"),
              onTap: () {
                print("Home");
                //TODO:Navigation
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile"),
              onTap: () {
                print("profile");
                //TODO:Navigation
              },
            ),
            Divider(),
            ListTile(
                leading: Icon(CupertinoIcons.settings),
                title: Text("Setting"),
                onTap: () {
                  print("Setting");
                  //TODO:Navigation
              }
            ),
            
          ],
        ),
      ),
    );
  }
}
