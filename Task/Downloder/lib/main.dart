import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Downloderapp(),
    );
  }
}

class Downloderapp extends StatefulWidget {
  const Downloderapp({super.key});

  @override
  State<Downloderapp> createState() => _DownloderappState();
}

class _DownloderappState extends State<Downloderapp> {
  String? valued;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                onChanged:(value){
                  setState(() {
                    valued = value;
                  });
                } ,
              ),
              ElevatedButton(onPressed: () async{
                var directory = await getTemporaryDirectory();
                var path = "${directory.path}"+"/myimg.jpeg";
                await Dio().download(valued!,path);
                await GallerySaver.saveImage(path,albumName: "Flutter");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("complet"))
                );
              }, child: Text("click"))
            ],
          ),
        ),
      ),
    );
  }
}