import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  _CardWidgetState createState() => _CardWidgetState();
}


class _CardWidgetState extends State<CardWidget> {

  @override
  Widget build(
    BuildContext context,
  ) {
    return  Card(
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
            child: Container(
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

                            SizedBox(width: 10,),
                            Expanded(
                              child: new Text(
                                'Samsung Gear VR R324',
                                maxLines: 1,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.grey, fontSize: 16,fontFamily: 'Gilory'),
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
                            SizedBox(width: 10,),
                            Text(
                              "£45.12",
                              style: TextStyle(color: Color(0xff1F2322), fontSize: 15,fontFamily: 'Gilory'),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "94.12",
                              style: TextStyle(color:  Color(0xff1F2322).withOpacity(0.3), fontSize: 15,fontFamily: 'Gilory',decoration: TextDecoration.lineThrough,decorationColor: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            onTap: (){},
          ),
        ),
      ),


    );


  }
}
