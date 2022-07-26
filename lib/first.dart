import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_shayari/secound.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  List<String> name = [
    "FriendShip Shayri ",
    "Funny Shayri",
    "Hurt Shayri",
    "DesBhakti Shayri",
    "Love Shayri",
    "Morning Shayri",
    "Night Shayri",
    "Single Shayri",
    "Sorry Shayri",
    "Think Shayri"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catagary"),
      ),
      body:SafeArea(
        child:ListView(
          shrinkWrap: true,
          children: [
            Container(
              child:Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("images/02.jpg",

                        fit:BoxFit.fill,
                        color: Colors.black.withOpacity(0.5),
                        colorBlendMode:BlendMode.darken,
                      ),
                      Container(
                        height: 660,
                        width: 450,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.black26,

                              child: ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 40,

                                ),

                                title: Text(
                                  name[index],
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return secound(name,index);
                                  },));
                                },
                              ),
                            );
                          },
                          itemCount: name.length,
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          ],
        ) ,
      ),







    );
  }
}
