import 'package:Ecommerce/helpers/global.dart';

class LadiesWidget extends StatelessWidget {
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: <Widget>[
        Center(
            child: TextResponsive("Shirts, Sweaters & Jackets",
                style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Gilory',
                    color: Color(0xff1F2322)))),
        SizedBoxResponsive(
          height: 25,
        ),
        //shirts, sweaters & jackets
        Container(
            padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
            color: Colors.white,
            child: Firstitem(gender: "women")),
        SizedBoxResponsive(
          height: 80,
        ),
        Center(
            child: TextResponsive("Pants & Shorts",
                style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Gilory',
                    color: Color(0xff1F2322)))),
        //Pants & shorts
        Container(
            padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
            color: Colors.white,
            child: Secondtitem()),
        SizedBoxResponsive(
          height: 80,
        ),
        Column(
          children: <Widget>[
            Center(
                child: TextResponsive("How to Measure Your Body For Size",
                    style: TextStyle(
                        fontSize: 60,
                        fontFamily: 'Gilory',
                        color: Color(0xff1F2322)))),
            SizedBoxResponsive(
              height: 80,
            ),
            //How to Measure Your Body For Size
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Imagechart(image: 'assets/images/FittingGuidladies.png'),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Items(
                            title: "BUST",
                            size: 50,
                            color: Color(0xff1F2322),
                            font: false,
                            center: false),
                        Items(
                          title:
                          "Place tape measure up under arms and measure the fullest part of the chest, keeping tape parallel to the floor.",
                          size: 40,
                          color: Color(0xff1F2322),
                          font: true,
                          center: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Items(
                            title: "WAIST",
                            size: 50,
                            color: Color(0xff1F2322),
                            font: false,
                            center: false),
                        Items(
                          title:
                          "Tape measure should be straight around waist where pant waistband normally sits.",
                          size: 40,
                          color: Color(0xff1F2322),
                          font: true,
                          center: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Items(
                            title: "HIP",
                            size: 50,
                            color: Color(0xff1F2322),
                            font: false,
                            center: false),
                        Items(
                          title:
                          "Standing with heels together and with tape parallel to the floor,measure the fullest part.",
                          size: 40,
                          color: Color(0xff1F2322),
                          font: true,
                          center: true,
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
