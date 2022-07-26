import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_shayari/main.dart';
import 'package:permission_handler/permission_handler.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  void initState() {
    super.initState();

   Lodding();
  }

  Lodding()
  async {
    var status = await Permission.storage.status;
    if(!status.isGranted)
      {
        await[Permission.storage].request();
      }
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return MyApp();
    },));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child:Image.asset("images/unnamed.webp"),
      ),
    );
  }
}
