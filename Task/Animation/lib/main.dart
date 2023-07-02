import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimation(),
    );
  }
}

class MyAnimation extends StatefulWidget {
 

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> with SingleTickerProviderStateMixin {
  Animation? animation;
  AnimationController? controler;
  Animation? coloranimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controler = AnimationController(vsync: this,duration: Duration(seconds: 5));
    animation = Tween(begin: 0.0,end: 300.0).animate(controler!);
    //MARK:addlistener will listen everytime when animation value change
    animation!.addListener(() { 
      setState(() {}); 
    });
     coloranimation = ColorTween(begin: Colors.orange,end: Colors.blue).animate(controler!);
    coloranimation!.addListener(() { 
      setState(() {});
    });
    controler!.forward();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children:[
            Container(
              color: coloranimation?.value,
              width: animation?.value,
              height: animation?.value,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewWidget()));
            },child: Hero(tag: "ok",child: Image.network("https://images.unsplash.com/photo-1533450718592-29d45635f0a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8anBnfGVufDB8fDB8fHww&w=1000&q=80",height: 100,width: 100,fit: BoxFit.cover,)))
          ],
        ),
      ),
    );
  }
}


class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(tag:"ok",child: Image.network("https://images.unsplash.com/photo-1533450718592-29d45635f0a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8anBnfGVufDB8fDB8fHww&w=1000&q=80"),) ,
      ),
    );
  }
}