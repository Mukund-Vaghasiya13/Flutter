import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: RadioInAlert(),
    );
  }
}

class RadioInAlert extends StatefulWidget {
  const RadioInAlert({Key? key}) : super(key: key);

  @override
  State<RadioInAlert> createState() => _RadioInAlertState();
}

class _RadioInAlertState extends State<RadioInAlert> {
  String groupvalue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioInAler"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                showDialog(context: context, builder: (Context){
                  return AlertDialog(
                    title: Text("List of City"),
                    actions: [
                    ListTile(
                      title: Text("Rajkot"),
                      onTap: (){
                        setState(() {
                          groupvalue = "Rajkot";
                        });
                        Navigator.pop(context);
                      },
                    ),
                      ListTile(
                        title: Text("Surat"),
                        onTap: (){
                          setState(() {
                            groupvalue = "Surat";
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                });
              },
              child: Text("Click"),
            ),
            Text(groupvalue),
          ],
        ),
      ),
    );
  }
}

