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
      theme: ThemeData(
        canvasColor: Color(0xffCA1F3F),
        primaryColor: Color(0xffCA1F3F),
        splashColor: Color(0xffFEBA01).withOpacity(0.5),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Gilory',
        iconTheme: IconThemeData(
          color: Color(0xffFEBA01),
          size: 30,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 26, color: Color(0xff1F2322)),
          headline2: TextStyle(fontSize: 20, color: Color(0xff1F2322)),
          headline3: TextStyle(fontSize: 18),
          headline4: TextStyle(fontSize: 17),
          headline6: TextStyle(fontSize: 25, color: Colors.white),
          headline5: TextStyle(fontSize: 25, color: Color(0xffFEBA01)),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Glory'),
        ),
      ),
      home:HomeView(),
    );
  }
}
