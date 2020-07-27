import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<LoginPage> with TickerProviderStateMixin {
  AnimationController controler;

  @override
  void initState() {
    super.initState();
    controler = AnimationController(vsync: this);
  }
  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: loginBody(),
      ),
    );
  }

  loginBody() => SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[loginHeader(), loginFields()],
    ),
  );
  loginHeader() => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Lottie.asset(
        'assets/login.json',
        controller: controler,
        height: 250,
        width: 250,
        fit: BoxFit.cover,
      ),
      Text(
        "Welcome to Erupt",
        style: TextStyle(fontWeight: FontWeight.w700, color: Color(0xffCA1F3F),fontFamily: 'Gilory',fontSize: 18),
      ),
      SizedBox(
        height: 5.0,
      ),
      Text(
        "Sign in to continue",
        style: TextStyle(color: Colors.grey,fontFamily: 'GiloryL',fontSize: 14),
      ),
    ],
  );

  loginFields() => Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Enter your username",
              labelText: "Username",
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
          child: TextField(
            maxLines: 1,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter your password",
              labelText: "Password",
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
          width: double.infinity,
          child: RaisedButton(
            padding: EdgeInsets.all(12.0),
            shape: StadiumBorder(),
            child: Text(
              "SIGN IN",
              style: TextStyle(color: Colors.white,fontFamily: 'Gilory'),
            ),
            color: Color(0xffCA1F3F),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "SIGN UP FOR AN ACCOUNT",
          style: TextStyle(color:Color(0xffCA1F3F),fontFamily: 'GiloryL'),
        ),
      ],
    ),
  );
}



