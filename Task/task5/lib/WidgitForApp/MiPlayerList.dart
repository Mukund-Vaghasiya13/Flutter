import 'package:flutter/material.dart';
class MiPlayerLists extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(height: 20,),
        Row(
          children: [
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://c.ndtvimg.com/2019-03/7j8idu0o_rohit-sharma-mumbai-indians-afp_625x300_31_March_19.jpg",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Rohit Sharma(c)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
        Container(
          height: 4,
          width: 410,
          color: Colors.black,
        ),
         SizedBox(height: 20,),
        Row(
          children: [
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://i0.wp.com/cricketaddictor.com/wp-content/uploads/2021/05/Suryakumar-Yadav-3.jpg?fit=1200%2C900&ssl=1",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Suryakumar Yadav",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
        Container(
          height: 4,
          width: 410,
          color: Colors.black,
        ),
        SizedBox(height: 20,),
        Row(
          children: [
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://www.deccanherald.com/sites/dh/files/styles/article_detail/public/articleimages/2023/04/16/file7psrya5qeowsk947vu-1-1210225-1681655310.jpg?itok=8CeIXqiH",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Arjun Tendulkar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
        Container(
          height: 4,
          width: 410,
          color: Colors.black,
        ),
      ]),
    );
  }
}