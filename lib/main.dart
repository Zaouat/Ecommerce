import 'package:Ecommerce/helpers/global.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Erupt',
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        canvasColor: mcolor,
        primaryColor: wcolor,
        splashColor: Color(0xffFEBA01).withOpacity(0.5),
        fontFamily: 'Gilory',
        iconTheme: IconThemeData(
          color: Color(0xffFEBA01),
          size: 30,
        ),
        textTheme: TextTheme(
          //Appbar and Header
          headline1: TextStyle(fontSize: 75, color: Color(0xffFEBA01)),
          headline2: TextStyle(fontSize: 105, color: Colors.white),
          headline3: TextStyle(
              fontSize: 55, color: Colors.white, fontFamily: 'GiloryL'),
          headline4: TextStyle(fontSize: 20),
          headline5: TextStyle(fontSize: 26, color: Color(0xff1F2322)),
          headline6: TextStyle(fontSize: 25, color: Colors.white),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Glory'),
        ),
      ),
      home: IntroPage(),
    );
  }
}
