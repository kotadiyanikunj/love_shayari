import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:ui' as ui;
class fourth extends StatefulWidget {
  List<String> temp;
  int cnt;

  fourth(this.temp, this.cnt);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  int i = 0;
  int cnt = 0;
  List<String> temp = [];
  double textsize = 20;
  int inx = 0;
  int inxf=0;

  List<Color> l = [
    Colors.red,
    Colors.green,
    Colors.white,
    Colors.black,
    Colors.blue,
    Colors.tealAccent,
    Colors.yellow,
    Colors.orange,
    Colors.deepPurple,
    Colors.brown,
    Colors.cyan,
    Colors.blueGrey,
    Colors.deepOrange,
    Colors.grey,
    Colors.orangeAccent,
    Colors.amber,
    Colors.amberAccent,
    Colors.blueAccent,
  ];
  String folderpath="";
  GlobalKey _globalKey=GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createfolder();

    cnt = widget.cnt;
    temp = widget.temp;
  }

  createfolder()
  async {
    String path="storage/emulated/0/Download/Love shayari";
    Directory directory= Directory(path);
    if(await directory.exists())
      {

      }
    else
    {
       await directory.create();
       print("created...");
    }

    folderpath=directory.path;
  }

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary =
      _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);


      return pngBytes;
    } catch (e) {
      return Future.value();

    }
  }

  Color textclr = Colors.white;
  Color bgcolor = Colors.white;

  List<String> font = [
    "Abel",
    "AguafinaScript",
    "Akronim",
    "AlexBrush",
    "AnnieUse",
  ];
  List<String> sticker1 = [
    """❤❤❤❤❤❤❤❤""",
    """😊😊😊😊😊😊😊😊""",
    """😍😍😍😍😍😍😍😍""",
    """💕💕💕💕💕💕💕💕""",
    """😍😍😍😍😍😍😍😍""",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: ListView(
      children: [
        Container(
          child: Stack(
            children: [
              Image.asset(
                "images/02.jpg",
                height: 660,
                width: 450,
                fit: BoxFit.fill,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.darken,
              ),
              RepaintBoundary(
              key:_globalKey,
                child: Container(
                  height: 400,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 70, left: 20, right: 20),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: bgcolor.withOpacity(0.5),
                        ),
                        child: Text(
                          "${sticker1[inx]}\n${temp[cnt]}\n${sticker1[inx]}",
                          style: TextStyle(
                            fontSize: textsize,
                            fontWeight: FontWeight.bold,
                            color: textclr,
                            fontFamily:font[inxf],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              builder: (context) {
                                return Container(
                                  height: 100,
                                  margin: EdgeInsets.all(10),
                                  child: GridView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: l.length,
                                      itemBuilder: (context, index) {
                                        return GridTile(
                                          child: Container(
                                            child: InkWell(
                                              onTap: () {
                                                bgcolor = l[index];
                                                setState(() {});
                                              },
                                            ),
                                            color: l[index],
                                          ),
                                        );
                                      },
                                      gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 10,
                                        crossAxisSpacing: 10,
                                        childAspectRatio: 1,
                                        mainAxisSpacing: 10,
                                      )),
                                );
                              },
                              context: context,
                            );
                          },
                          child: Text(
                            "Background",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              builder: (context) {
                                return Container(
                                  height: 100,
                                  margin: EdgeInsets.all(10),
                                  child: GridView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: l.length,
                                      itemBuilder: (context, index) {
                                        return GridTile(
                                          child: Container(
                                            child: InkWell(
                                              onTap: () {
                                                textclr = l[index];
                                                setState(() {});
                                              },
                                            ),
                                            color: l[index],
                                          ),
                                        );
                                      },
                                      gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 10,
                                        crossAxisSpacing: 10,
                                        childAspectRatio: 1,
                                        mainAxisSpacing: 10,
                                      )),
                                );
                              },
                              context: context,
                            );
                          },
                          child: Text(
                            "Text Color",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 35)),
                        onPressed: () {
                          _capturePng().then((value) async {
                            DateTime d= DateTime.now();
                            String time="${d.year}${d.month}${d.day}${d.hour}${d.minute}${d.second}${d.microsecond}";
                            String imagepath="${folderpath}/Image$time.jpg";
                            File file= new File(imagepath);
                            await file.create();
                            file.writeAsBytesSync(value);
                            Share.shareFiles([file.path], text: 'Great picture');
                          });
                        },
                        child: Text(
                          "Share",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 560),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 38)),
                          onPressed: () {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              builder: (context) {
                                return Container(
                                  child: StatefulBuilder(
                                    builder: (context, setState1) {
                                      return ListView.builder(
                                        itemCount: sticker1.length,
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            onTap: () {
                                              inx = index;
                                              setState1(() {

                                              });
                                              setState(() {});
                                            },
                                            title: Container(
                                              color: Colors.white
                                                  .withOpacity(0.5),
                                              child: Text(sticker1[index]),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
                              context: context,
                            );
                          },
                          child: Text(
                            "Emoji",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 38)),
                          onPressed: () {
                            showModalBottomSheet(
                              barrierColor: Colors.transparent,
                              builder: (context) {
                                return Container(
                                  child: StatefulBuilder(
                                    builder: (context, setState1) {
                                      return ListView.builder(
                                        itemCount: font.length,
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            onTap: () {
                                              inxf = index;
                                              setState1((){});
                                              setState(() {

                                              });


                                            },
                                            title: Container(

                                              margin: EdgeInsets.all(10),
                                              child: Text(font[index],
                                                style: TextStyle(fontSize: 20,

                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
                              context: context,
                            );
                          },
                          child: Text(
                            "Font",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 23)),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                  height: 150,
                                  child: StatefulBuilder(
                                    builder: (context, setState1) {
                                      return Slider(
                                        min: 10,
                                        max: 50,
                                        value: textsize,
                                        onChanged: (value) {
                                          textsize = value;
                                          setState1(() {});
                                          setState(() {});
                                        },
                                      );
                                    },
                                  ));
                            },
                          );
                        },
                        child: Text(
                          "Text size",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    );
  }
}
