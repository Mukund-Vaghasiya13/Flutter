import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CskPlayerList extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(height: 20,),
        Row(
          children: [
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://images.thequint.com/thequint%2F2021-04%2F15d4fcf5-7c0e-481e-9dc6-37e444c58fef%2FIPL21M8_55.JPG?rect=0%2C0%2C3872%2C2178",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Mahendra Singh Dhoni(c)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
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
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-eloh2enpc2jkmpv68gmuorigg7-20190805161150.Medi.jpeg",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Suresh Kumar Raina",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
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
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://www.insidesport.in/wp-content/uploads/2021/08/plessi.jpg",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Faf du Plessis",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
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
//