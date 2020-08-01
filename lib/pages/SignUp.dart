import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignupPage extends StatefulWidget {
  _SignuppageState createState() => _SignuppageState();
}

class _SignuppageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Material(
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    loginBody(),
                  ],
                ),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Material(
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: IconButton(
                  iconSize: 28,
                  tooltip: 'Close',
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xffCA1F3F),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
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
          Text(
            "Sign Up",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'Gilory',
                fontSize: 40),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "it's easier to sign up now",
            style: TextStyle(
                color: Colors.white, fontFamily: 'GiloryL', fontSize: 18),
          ),
          SizedBox(
            height: 120,
          )
        ],
      );

  loginFields() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width - 10,
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
              child: FlatButton.icon(
                  padding: EdgeInsets.only(right: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                      side: BorderSide(color: Colors.transparent)),
                  color: Color(0xff5960FF),
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.logo_facebook,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Continue with Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GiloryL',
                        fontSize: 18),
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
              child: FlatButton(
                  padding: EdgeInsets.only(right: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                      side: BorderSide(color: Color(0xffCA1F3F), width: 1)),
                  color: Colors.transparent,
                  onPressed: () {},
                  child: Text(
                    "I'll use email or phone",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GiloryL',
                        fontSize: 18),
                  )),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 50,
                    width: 50,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Color(0xff1C9CEB),
                      textColor: Colors.white,
                      child: Icon(
                        Ionicons.logo_twitter,
                        size: 20,
                      ),
                      padding: EdgeInsets.all(15),
                      shape: CircleBorder(),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 50,
                    width: 50,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Color(0xffE34133),
                      textColor: Colors.white,
                      child: Icon(
                        Ionicons.logo_google,
                        size: 20,
                      ),
                      padding: EdgeInsets.all(15),
                      shape: CircleBorder(),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    height: 50,
                    width: 50,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Color(0xff0073AF),
                      textColor: Colors.white,
                      child: Icon(
                        Ionicons.logo_linkedin,
                        size: 20,
                      ),
                      padding: EdgeInsets.all(15),
                      shape: CircleBorder(),
                    )),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            RichText(
              text: new TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text:"Already have account? ",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GiloryL', fontSize: 16),
                  ),

                  new TextSpan(text: 'Login!',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("hhh");
                      },
                    style: TextStyle(
                        color: Color(0xffCA1F3F), fontFamily: 'GiloryL', fontSize: 18,decoration: TextDecoration.underline,),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
