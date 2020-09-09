import 'package:Ecommerce/helpers/global.dart';

class Lastitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            Imagechart(image: 'assets/images/FittingGuidmen.png'),
            Flexible(
              child: ContainerResponsive(
                padding: EdgeInsets.only(top: 10.0, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Items(
                        title: "NECK",
                        size: 50,
                        color: Color(0xff1F2322),
                        font: false,
                        center: false),
                    Items(
                      title:
                      "Measure around your neck at the point where the shirt collar band encircles the neck.",
                      size: 40,
                      color: Color(0xff1F2322),
                      font: true,
                      center: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Items(
                        title: "CHEST",
                        size: 50,
                        color: Color(0xff1F2322),
                        font: false,
                        center: false),
                    Items(
                      title:
                      "Place the tape measure up under arms and measure the fullest part of the chest, keeping tape parallel to the floor.",
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
                        title: "SLEEVE",
                        size: 50,
                        color: Color(0xff1F2322),
                        font: false,
                        center: false),
                    Items(
                      title:
                      "With elbow bent, measure from the center of the back at the base of the neck, across the shoulder to the elbow and then down the waist.",
                      size: 40,
                      color: Color(0xff1F2322),
                      font: true,
                      center: true,
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
