import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_shayari/lodding.dart';
import 'package:love_shayari/secound.dart';

import 'CruvPrc.dart';
import 'first.dart';

void main() {
  runApp(MaterialApp(home:home() ,
    debugShowCheckedModeBanner: false,
  ),

  );
}

class MyApp extends StatelessWidget {
 MyApp({Key? key}) : super(key: key);
  List<String>l=[""];

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("data"),
        ),
      ),
      body:Center(
        child:ListView(
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
                        height: 645,
                        width: 450,
                        alignment: Alignment.bottomCenter,
                        child:ElevatedButton(
                            style: ElevatedButton.styleFrom(

                              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 18),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return first();

                              },));
                            }, child:Text("Done",style: TextStyle(fontSize: 25),)),
                      ),

                 SizedBox(
                   height: 200,
                 ),
                      Container(
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>cruveprc())
                            );
                          },
                          child: Text("Open"),
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),


      ),
    );
  }
}

