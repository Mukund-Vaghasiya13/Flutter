import 'package:flutter/material.dart';
import 'package:iplapp/EachTeamScreen/CskTeam.dart';
import 'package:iplapp/EachTeamScreen/GujTitansTeam.dart';
import 'package:iplapp/WidgitForApp/MiPlayerList.dart';

import '../EachTeamScreen/MiTeam.dart';

class TeamsList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10),child: Image.network("https://m.media-amazon.com/images/I/71dRTGUp1QL._SL1500_.jpg",width: 150,height: 150,)),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  child: Text("Chennai Super Kings",style: TextStyle(
                    fontSize: 20,
                  )),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CskPlayers()));
                  },
                )
              ],
            ),
            Container(
              width: 410,
              height: 5,
              color: Colors.black,
            ),
             Row(
              children: [
                Padding( padding: EdgeInsets.all(10),child: Image.network("https://i.pinimg.com/originals/29/2b/d5/292bd5c291ff709c415928ff94454259.png",width: 150,height: 150,)),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  child: Text("Mumbai Indians",style: TextStyle(
                    fontSize: 20,
                  )),
                  onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>MiPlayerList()));
                  },
                )
              ],
            ),
            Container(
              width: 410,
              height: 5,
              color: Colors.black,
            ),
             Row(
              children: [
                Padding(padding: EdgeInsets.all(10),child: Image.network("https://etimg.etb2bimg.com/photo/89716039.cms",width: 150,height: 150,)),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  child: Text("Gujarat Titans",style: TextStyle(
                    fontSize: 20,
                  )),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GujtitanPlayers()));
                  },
                )
              ],
            ),
            Container(
              width: 410,
              height: 5,
              color: Colors.black,
            ),
          ]),
        );
  }
}

//