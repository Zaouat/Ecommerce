import 'package:Ecommerce/helpers/global.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<IntroPage> {
  final List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Explore",
        description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        pathImage: "assets/images/slider/explore.png",
        heightImage: 400,
        widthImage: 400,
        backgroundColor: wcolor,
        marginTitle: EdgeInsets.only(left:20,right:20,top:20),
        styleTitle: TextStyle(color: Color(0xff1F2322),fontFamily: 'Gilory',fontSize: 22),
        styleDescription: TextStyle(color: Color(0xff1F2322),fontFamily: 'GiloryL',fontSize: 20),
      ),
    );
    slides.add(
      new Slide(
        title: "Make the payment",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        pathImage: "assets/images/slider/payment.png",
        backgroundColor: wcolor,
        heightImage: 400,
        widthImage: 400,
        marginTitle: EdgeInsets.only(left:20,right:20,top:20),
        styleTitle: TextStyle(color: Color(0xff1F2322),fontFamily: 'Gilory',fontSize: 22),
        styleDescription: TextStyle(color: Color(0xff1F2322),fontFamily: 'GiloryL',fontSize: 20),
      ),
    );
    slides.add(
      new Slide(
        title: "Enjoy your shopping",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        pathImage: "assets/images/slider/shopping.png",
        heightImage: 400,
        widthImage: 400,
        backgroundColor: wcolor,
        marginTitle: EdgeInsets.only(left:20,right:20,top:20),
        styleTitle: TextStyle(color: Color(0xff1F2322),fontFamily: 'Gilory',fontSize: 22),
        styleDescription: TextStyle(color: Color(0xff1F2322),fontFamily: 'GiloryL',fontSize: 20),
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => LoginPage())
    );

  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      colorPrevBtn: mcolor,
      colorSkipBtn: mcolor,
      colorDoneBtn: mcolor,
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
