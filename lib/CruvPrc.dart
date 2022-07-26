import 'package:flutter/material.dart';

class cruveprc extends StatefulWidget {
  @override
  State<cruveprc> createState() => _cruveprcState();
}

class _cruveprcState extends State<cruveprc> {

  var  qty = 0;

  // var primaryColor = Color(0xFFFDFDFD);
  // var secondaryColor = Color(0xFF252525);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("cruv"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(88)))),
                        Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 200,
                                              margin: EdgeInsets.all(10.0),
                                              child: Image.asset(
                                                "img/img1.jpg",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Text("250"),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 200,
                                        margin: EdgeInsets.all(10.0),
                                        color: Colors.black,
                                        //child:Image.asset("img/img1.jpg",),
                                      ),
                                      Container(
                                        width: 200,
                                        margin: EdgeInsets.all(10.0),
                                        child: Image.asset(
                                          "img/img2.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      // SizedBox(width: 10,),
                                      Container(
                                        color: Colors.blue,
                                        margin: EdgeInsets.all(10),
                                        child: Image.asset(
                                          "img/img3.jpg",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.purple.shade100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(88))),
                      ),
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Good food this ",
                                  style:TextStyle(color: Colors.pink),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "minim veniam, quis nostrud exercitation ullamco"
                                        " laboris nisi ut aliquip ex ea commodo consequat. "
                                        "Duis aute irure dolor in reprehenderit in voluptate velit e"
                                        "sse cillum dolore eu fugiat nulla pariatur. Excepteur sint"
                                        "occaecat cupidatat non proident, sunt in culpa qui officia "
                                        "deserunt mollit anim id est laborum.",
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20.0),
                                          child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            color: Colors.indigo.shade500,
                                            child: IconButton(
                                              onPressed: ()async{
                                                setState(() {
                                                  qty=qty+1;
                                                });
                                              },
                                              icon: Icon(Icons.add,size: 20,color: Colors.white,),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        Text(qty.toString()),
                                        SizedBox(width: 5,),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20.0),
                                          child: Container(

                                            width: 30.0,
                                            height: 30.0,
                                            color: Colors.indigo.shade500,
                                            child: IconButton(
                                              onPressed: ()async{

                                                if(qty>0)
                                                {
                                                  setState(() {
                                                    qty=qty-1;
                                                  });
                                                }


                                              },
                                              icon: Icon(Icons.remove,size: 20,color: Colors.white,),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      child:  Text("VEG",style: TextStyle(fontSize: 20),),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Center(
                                  child:GestureDetector(
                                    onTap: ()async{

                                      var pid="1";
                                      var pname="abc";
                                      var pimage="img/sdf";
                                      var price="123";


                                      // DatabaseHandler obj = new DatabaseHandler();
                                      // var id = await obj.addtocart(pid,pname,pimage,price,qty.toString());
                                      // print("Added to cart");
                                      //
                                      // Navigator.of(context).push(
                                      //     MaterialPageRoute(builder: (context)=>AddToCart())
                                      // );

                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 45,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(20),
                                      ),

                                      child: Text("Add To Cart",style: TextStyle(fontSize: 25,color: Colors.white),),
                                    ),
                                  ),
                                )
                              ])
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 380,
              right: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: 21.0,
                  height: 25.0,
                  color: Colors.indigo,
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}