import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      debugShowCheckedModeBanner: false,
    );

  }
}


class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PracticeAPP"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.indigoAccent ,
              ),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                       color: Colors.white, 
                        borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Center(
                    child: Text("HELLO",style: TextStyle(
                           fontSize: 25,
                            fontWeight: FontWeight.bold,
                             color: Colors.black
                      ),textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
             child: SizedBox(
               height: 40,
               width: 100,
               child: ElevatedButton(
                 onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Welcome",
                        toastLength: Toast.LENGTH_SHORT ,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.amber,
                        textColor: Colors.black
                    );
                 },
                 child: Text("Click"),
               ),
             ),
            )
          ],
        ),
      ),
    );
  }
}
