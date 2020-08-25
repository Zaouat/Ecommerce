import 'package:Ecommerce/helpers/global.dart';

class LadiesWidget extends StatelessWidget {
  Widget build(
    BuildContext context,
  ) {
    return Column(
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
              border: TableBorder.all(
                color: Color(0xff444444),
              ),
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
                      Text(
                        'NUMERIC SIZE',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'BUST',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'WAIST',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'HIP',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                TableRow(children: [
                  Text(
                    'X-Small',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '34',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '26',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '36.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    'Small',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '4 - 6',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '35 - 36',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '27 - 28',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '37.5 - 38.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    'Medium',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '8 - 10',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '37 - 38',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '29 - 30',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '39.5 - 40.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    'Large',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '12 - 14',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '39.5 - 41',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '31.5 - 33',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '42 - 43.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    'XL',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '16 - 18',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '42.5 - 44.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '34.5 - 36.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '45 - 47',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    '2XL',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '20',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '46',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '38',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '48.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    '3XL',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '22',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '47.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '39.5',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '50',
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
          height: 60,
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
              border: TableBorder.all(
                color: Color(0xff444444),
              ),
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
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '32',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '33',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '34',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '35..',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Gilory',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                TableRow(children: [
                  Text(
                    'Hips',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '39 - 40',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '40 - 41',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '41 - 42',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '42 - 43',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gilory',
                      color: Color(0xff1F2322),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '43 - 44..',
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
                  width: MediaQuery.of(context).size.width / 1.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/FittingGuidladies.png'),
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
                        Text("BUST",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilory',
                                color: Color(0xff1F2322))),
                        Text(
                          "Place tape measure up under arms and measure the fullest part of the chest, keeping tape parallel to the floor.",
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
                        Text(
                          "Tape measure should be straight around waist where pant waistband normally sits.",
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Giloryl',
                              color: Color(0xff1F2322)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("HIP",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilory',
                                color: Color(0xff1F2322))),
                        Text(
                          "Standing with heels together and with tape parallel to the floor,measure the fullest part.",
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
