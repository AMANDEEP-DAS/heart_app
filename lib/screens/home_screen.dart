import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 15),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Search',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.black),),
                            // Text('',style: TextStyle(fontSize: 30,color: Colors.black)),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('http://3.bp.blogspot.com/_QgE0riHYGGE/TOl3t-zcWcI/AAAAAAAAAAY/0X0XQpuojBs/s1600/profile_cristiano_ronaldo.jpg'),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    // color: Colors.blue,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: ListTile(
                              leading: Icon(Icons.search,color: Colors.white,),
                              title: TextField(
                                cursorColor: Colors.white,
                                style: TextStyle(
                                    color: Colors.white
                                ),
                                decoration: InputDecoration(
                                    hintText: 'Search...',
                                    hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xfff2870c),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
                              ),
                              child: Icon(Icons.filter_list,color: Colors.white,size: 30,),
                            ),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 40,),
                  Text('Popular',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.black),),
                  Text('Doctors nearby',style: TextStyle(fontSize: 30,color: Colors.black)),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(width: 200,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff0ad1a9),
                                        Color(0xff0ad1a9).withOpacity(0.5),
                                        Color(0xff0ad1a9)
                                      ],
                                      stops: [0.0,0.5,1.0]
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(width: 200,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff0ad1a9),
                                        Color(0xff0ad1a9).withOpacity(0.5),
                                        Color(0xff0ad1a9)
                                      ],
                                      stops: [0.0,0.5,1.0]
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(width: 200,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff0ad1a9),
                                        Color(0xff0ad1a9).withOpacity(0.5),
                                        Color(0xff0ad1a9)
                                      ],
                                      stops: [0.0,0.5,1.0]
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Text('Last Viewed',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.black),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xfff2870c),
                                Color(0xfff2870c).withOpacity(0.7),
                                Color(0xfff2870c)
                              ],
                              stops: [0.0,0.5,1.0]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xfff2870c),
                                  Color(0xfff2870c).withOpacity(0.7),
                                  Color(0xfff2870c)
                                ],
                                stops: [0.0,0.5,1.0]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xfff2870c),
                                  Color(0xfff2870c).withOpacity(0.7),
                                  Color(0xfff2870c)
                                ],
                                stops: [0.0,0.5,1.0]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width/2.3,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xfff2870c),
                                  Color(0xfff2870c).withOpacity(0.7),
                                  Color(0xfff2870c)
                                ],
                                stops: [0.0,0.5,1.0]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}