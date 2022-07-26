import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_shayari/main.dart';
import 'package:love_shayari/thard.dart';

class secound extends StatefulWidget {
  int index;
  List<String> name;


  secound(this.name, this.index);



  @override
  State<secound> createState() => _secoundState();
}

class _secoundState extends State<secound> {
  List<String> friendship = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];

  List<String> funny = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];

  List<String> hurt = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];

  List<String> india = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];

  List<String> love = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];

  List<String> morning = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];
  List<String> night = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];
  List<String> single = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];
  List<String> sorry = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];
  List<String> think = [
    """Aasmaan Se Tod Kar Sitara Diya Hai,
Aalam-e-Tanhai Mein Ek Sharara Diya Hai,
Meri Kismat Bhi Naaz Karti Hai Mujhpe,
Khuda Ne Dost Hi Itna Pyara Diya Hai.""","""Dosti Mein Dost, Dost Ka Khuda Hota Hai,
Mahsoos Tab Hota Hai Jab Wo Juda Hota Hai.""","""Na Tum Door Jaana Na Hum Door Jayenge,
Apne-Apne Hisse Ki Dosti Ko Nibhayenge.""","""Hum Jab Bhi Aapki Duniya Se Jayenge,
Itni Khushiyan Aur Apnapan De Jayenge,
Ke Jab Bhi Yaad Karoge Is Pagal Dost Ko,
Hansti Aankhon Se Aansoo Nikal Aayenge.""",
  ];

  List<String> temp = [];

  @override
  void initState() {
    super.initState();

    switch (widget.index) {
      case 0:
        temp = friendship;

        break;
      case 1:
        temp = funny;
        break;
      case 2:
        temp = hurt;
        break;
      case 3:
        temp = india;
        break;
      case 4:
        temp = love;
        break;
      case 5:
        temp = morning;
        break;
      case 6:
        temp = night;
        break;
      case 7:
        temp = single;
        break;
      case 8:
        temp = sorry;
        break;
      case 9:
        temp = think;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shayari"),
      ),
      body:SafeArea(
        child: ListView(
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
                        height: 662,
                        width: 450,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 15,
                              color: Colors.black26,

                              margin: EdgeInsets.all(5),
                              child: ListTile(
                                title: Text(
                                  temp[index],
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                  maxLines: 1,
                                ),

                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return thrdpage(index, temp);
                                    },
                                  ));
                                },
                              ),
                            );
                          },
                          itemCount: temp.length,
                        ),
                      ),
                    ],
                  ),
                ],
              ) ,
            ),
          ],
        ),
      ),



    );
  }
}
