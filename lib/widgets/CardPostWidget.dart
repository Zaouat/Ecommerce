import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_icons/flutter_icons.dart';


class CardWidget extends StatefulWidget {
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> with TickerProviderStateMixin {
  AnimationController _controller;
  bool isLiked = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.only(right: 20),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Vr.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Material(
          color: Colors.black.withOpacity(0.3),
          child: InkWell(
            onDoubleTap: (){
              setState(() {
                isLiked = !isLiked;
              });
              _controller.animateTo(1.0,duration: Duration(milliseconds: 700));
              _controller.addStatusListener((status) {
                if(status.toString().contains("completed")){
                _controller.reset();
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Lottie.asset(
                    'assets/like.json',
                    controller: _controller,
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30) ,bottomRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                    height: 40,
                    width: 40,
                     child: isLiked ==false ? new IconButton(
                         icon: Icon(
                           Ionicons.ios_heart_empty,
                           color:Color(0xffCA1F3F),
                         ),
                         onPressed: null):new IconButton(
                         icon: Icon(
                           Ionicons.ios_heart,
                           color:Color(0xffCA1F3F),
                         ),
                         onPressed: null)
                  ),
                ),
                Container(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        height: 60,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Expanded(
                                  child: new Text(
                                    'Samsung Gear VR R324',
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontFamily: 'Gilory'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 10),
                                Text(
                                  "£45.12",
                                  style: TextStyle(
                                      color: Color(0xff1F2322),
                                      fontSize: 15,
                                      fontFamily: 'Gilory'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "94.12",
                                  style: TextStyle(
                                      color: Color(0xff1F2322).withOpacity(0.3),
                                      fontSize: 15,
                                      fontFamily: 'Gilory',
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.red),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
