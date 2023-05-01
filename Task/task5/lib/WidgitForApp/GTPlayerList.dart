import 'package:flutter/material.dart';

class GTTeamPlayer extends StatelessWidget {
  const GTTeamPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(height: 20,),
        Row(
          children: [
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://resources.pulse.icc-cricket.com/photo-resources/2022/05/30/7c46fb3d-3a0e-46c6-84b8-9d22f588cc5d/_AI_3856.jpg?width=500&height=500",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Hardik Pandya(c)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
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
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://images.hindustantimes.com/img/2022/09/17/1600x900/gill_gt_1648971844503_1663418444769_1663418444769.webp",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Shubman Gill",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
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
           Padding(padding: EdgeInsets.all(10),child: Image.network("https://bcciplayerimages.s3.ap-south-1.amazonaws.com/ipl/IPLHeadshot2023/65.png",height: 100,width: 150,fit: BoxFit.fill,)),
           Text("Kane Williamson ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
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