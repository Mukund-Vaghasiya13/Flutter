import 'package:flutter/material.dart';

import 'SplacePage.dart';
import 'ThemFile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splacescreen(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system ,
      theme:  ThemsToBeused.lightthem(context),
      darkTheme: ThemsToBeused.darkthem(context),
    );
  }
}



