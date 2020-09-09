import 'package:Ecommerce/helpers/global.dart';

//Refactor this code with widgets
class MenWidget extends StatelessWidget {
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
            child: Firstitem(gender: "men")),
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
        Lastitem()
      ],
    );
  }
}
