import 'package:flutter/material.dart';

class MenWidget extends StatefulWidget {
  _MenSizeWidgetState createState() => _MenSizeWidgetState();
}

class _MenSizeWidgetState extends State<MenWidget> {
  @override
  Widget build(
      BuildContext context,
      ) {
    return  Column(
      children: <Widget>[
        Center(
            child: Text("Shirts, Sweaters & Jackets",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Gilory',
                    color: Color(0xff1F2322)))),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(color: Color(0xff444444),),
              children: [
                TableRow(
                    decoration: BoxDecoration(
                      color: Color(0xff444444),
                    ),
                    children: [
                      Text(
                        'SIZE',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,

                      ),
                      Text('NECK',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('CHEST',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('WAIST',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('SLEEVE LENGTH',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                TableRow(
                    children: [
                      Text('Small',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('15.5 - 16',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('36 - 38',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('31 - 32',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('32.5 - 33',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                TableRow(children: [
                  Text('Medium',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('16.5 - 17',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('39 - 41',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('33 - 35',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('33 - 33.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text('Large',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('17 - 17.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('42 - 44',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('36 - 38',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('33.5 - 34',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                ]),
                TableRow(children: [
                  Text('XL',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('18 - 18.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('45 - 48',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('39 - 43',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('34 - 34.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                ]),
                TableRow(children: [
                  Text('2XL',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text('18.5 - 19',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('49 - 52',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('44 - 48',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                  Text('34.5 - 35',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,),
                ]),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Center(
            child: Text("Pants & Shorts",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Gilory',
                    color: Color(0xff1F2322)))),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(color: Color(0xff444444),),
              children: [
                TableRow(
                    decoration: BoxDecoration(
                      color: Color(0xff444444),
                    ),
                    children: [
                      Text(
                        'SIZE WAIST	',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,

                      ),
                      Text('30',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('32',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('33',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('34',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('35..',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                TableRow(
                    children: [
                      Text('Hips',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('39 - 40',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('40 - 41',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('41 - 42',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('42 - 43',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text('43 - 44..',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Color(0xff1F2322),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: <Widget>[
            Center(
                child: Text("How to Measure Your Body For Size",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Gilory',
                        color: Color(0xff1F2322)))),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width/1.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/FittingGuidmen.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("NECK",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilory',
                                color: Color(0xff1F2322))),
                        Text("Measure around your neck at the point where the shirt collar band encircles the neck.",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Giloryl',
                              color: Color(0xff1F2322)),

                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("CHEST",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilory',
                                color: Color(0xff1F2322))),
                        Text("Place the tape measure up under arms and measure the fullest part of the chest, keeping tape parallel to the floor.",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Giloryl',
                              color: Color(0xff1F2322)),

                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("WAIST",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilory',
                                color: Color(0xff1F2322))),
                        Text("Tape measure should be straight around waist where pant waistband normally sits.",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Giloryl',
                              color: Color(0xff1F2322)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("SLEEVE",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilory',
                                color: Color(0xff1F2322))),
                        Text("With elbow bent, measure from the center of the back at the base of the neck, across the shoulder to the elbow and then down the waist.",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Giloryl',
                              color: Color(0xff1F2322)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}