import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:love_shayari/secound.dart';
import 'package:share_plus/share_plus.dart';

import 'fourth.dart';

class thrdpage extends StatefulWidget {
  int cnt;
  List<String> temp;


  thrdpage(this.cnt,
      this.temp,);

  @override
  State<thrdpage> createState() => _thrdpageState();
}

class _thrdpageState extends State<thrdpage> {
  int cnt = 0;
  List<String> temp = [];
  PageController pageController=PageController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    cnt = widget.cnt;
    temp = widget.temp;
    pageController=PageController(initialPage: cnt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${temp.length}",
          maxLines: 1,
        ),
      ),
      body: SafeArea(
        child:ListView(
          shrinkWrap: false,
          children: [
            Container(
              child:Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "images/02.jpg",

                        fit: BoxFit.fill,
                        color: Colors.black.withOpacity(0.5),
                        colorBlendMode: BlendMode.darken,
                      ),

                      Container(
                        height: 80,
                        width: double.infinity,
                        alignment: Alignment.center,
                        color: Colors.black26,

                        child: Text(
                          "${cnt + 1}/${temp.length}",
                          style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),

                      ),
                      Container(
                        height: 400,
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 130),

                        child: PageView.builder(
                          controller: pageController,
                          onPageChanged:(value) {
                            cnt=value;
                            setState(() {

                            });
                          } ,
                          itemCount: temp.length,
                          itemBuilder: (context, index) {
                            return Container(

                              margin: EdgeInsets.all(20),

                              alignment: Alignment.center,

                              decoration: BoxDecoration(
                                color: Color(0xffeb4d4b).withOpacity(0.5),

                              ),
                              child: Text(temp[cnt],
                                style: TextStyle(fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,

                                ),
                                textAlign: TextAlign.center,
                              ),
                            );
                          },),
                      ),

                      Container(
                        height: 80,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 580),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: IconButton(onPressed: () {
                                if(cnt>0)
                                {
                                  cnt--;
                                  pageController.jumpToPage(cnt);
                                  setState(() {

                                  });
                                }
                              }, icon: Icon(
                                Icons.arrow_back_ios_outlined,
                              ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(onPressed: () {
                                FlutterClipboard.copy(temp[cnt]).then(( value ) =>

                                    Fluttertoast.showToast(
                                        msg: "Copyed",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0
                                    ),
                                );


                              }, icon: Icon(
                                Icons.copy,
                              ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return fourth(temp,cnt);
                                },));

                              }, icon: Icon(
                                Icons.edit_outlined,
                              ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(onPressed: () {
                                Share.share('check out my website https://example.com',
                                    subject: temp[cnt]);

                              }, icon: Icon(
                                Icons.share_outlined,
                              ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(onPressed: () {
                                if(cnt<temp.length-1)
                                {
                                  cnt++;
                                  setState(() {

                                  });
                                }
                              }, icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                              ),
                              ),
                            ),
                          ],
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
