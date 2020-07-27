import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ListCatWisget.dart';

class CatWidget extends StatefulWidget {
  _CatPostWidgetState createState() => _CatPostWidgetState();
}

class _CatPostWidgetState extends State<CatWidget> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      length: 6,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: TabBar(
                isScrollable: true,
                unselectedLabelColor: Color(0xffCA1F3F),
                indicatorColor: Color(0xffCA1F3F),
                tabs: [
                  Tab(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Android',
                        style: TextStyle(
                            color: Color(0xff1F2322),
                            fontFamily: 'Gilory',
                            fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Ios',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'VR',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Headphones',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Power banks',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Gamers gadgets',
                      style: TextStyle(
                          color: Color(0xff1F2322),
                          fontFamily: 'Gilory',
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
            body: Column(
              children: <Widget>[
                Container(
                  height: 270,
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Container(
                        child: Center(child: ListWidget()),
                      ),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text('Trending',style: TextStyle(fontSize: 22,color:Color(0xffCA1F3F),fontFamily: 'Gilory')),
                        ),
                      ],
                    ) ,
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            child: Text('Show All', style: TextStyle(
                                color: Color(0xff1F2322).withOpacity(0.5),
                                fontSize: 15,
                                fontFamily: 'Gilory')),
                            onTap: (){
                              //Show All trending
                            },
                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 270,
                  child: Center(child: ListWidget()),
                ),

              ],
            )),
      ),
    );
  }
}
