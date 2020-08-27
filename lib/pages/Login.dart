import 'package:Ecommerce/helpers/global.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    loginFields() => Column(
      children: <Widget>[
        //username field
        ContainerResponsive(
          height: 200,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-100,
          child: TextField(
            style: TextStyle(
                color: Colors.white, fontFamily: 'GiloryL', fontSize: 18),
            maxLines: 1,
            cursorColor: Colors.white,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide.none,
                  //borderSide: const BorderSide(),
                ),
                hintStyle: TextStyle(
                    color: Colors.white, fontFamily: 'GiloryL', fontSize: 16),
                filled: true,
                contentPadding: EdgeInsets.only(top: 20),
                fillColor: Colors.white24,
                hintText: 'Username'
            ),
          ),
        ),
        //password field
        ContainerResponsive(
          height: 200,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-100,
          child: TextField(
            style: TextStyle(
                color: Colors.white, fontFamily: 'GiloryL', fontSize: 16),
            maxLines: 1,
            cursorColor: Colors.white,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                  borderSide: BorderSide.none,
                  //borderSide: const BorderSide(),
                ),
                hintStyle: TextStyle(
                    color: Colors.white, fontFamily: 'GiloryL', fontSize: 18),
                filled: true,
                fillColor: Colors.white24,
                contentPadding: EdgeInsets.only(top: 20),
                hintText: 'Password'
            ),
          ),
        ),
        ContainerResponsive(
          height: 100.0,
        ),
        //login button
        ContainerResponsive(
          height: 120,
          heightResponsive: true,
          widthResponsive: false,
          width: MediaQuery.of(context).size.width-150,
          child: RaisedButtonResponsive(
            padding: EdgeInsets.all(12.0),
            shape: StadiumBorder(),
            child: TextResponsive(
              "LOG IN",
              style: TextStyle(color: Colors.white, fontFamily: 'Gilory',fontSize: 35),
            ),
            color: Color(0xffCA1F3F),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeMobilePortrait()),
              );
            },
          ),
        ),
        SizedBoxResponsive(
          height: 60.0,
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            child: TextResponsive(
              "SIGN UP FOR AN ACCOUNT",
              style: TextStyle(color: Color(0xffCA1F3F), fontFamily: 'GiloryL',fontSize: 40),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SignupPage()),
              );
            },
          ),
        ),
      ],
    );
    loginHeader() => Column(
      children: <Widget>[
        SizedBoxResponsive(
          height: 100,
        ),
        Center(
          child: ContainerResponsive(
            margin: EdgeInsetsResponsive.only(bottom: 20),
            height: 460,
            width:460,
            widthResponsive: true,
            heightResponsive: true,
            child: Image(
              image: AssetImage('assets/icon & splash/splash.png'),
            ),
          ),
        ),
        TextResponsive(
          "Welcome to Erupt",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xffCA1F3F),
              fontFamily: 'Gilory',
              fontSize: 80),
        ),
        SizedBoxResponsive(
          height: 15.0,
        ),
        TextResponsive(
          "Sign in to continue",
          style: TextStyle(
              color: Colors.white, fontFamily: 'GiloryL', fontSize: 50),
        ),
        SizedBoxResponsive(
          height: 160,
        )
      ],
    );
    return Material(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/login.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child:ListView(
            children: <Widget>[loginHeader(), loginFields()],
          ),
          ),
    );


  }




}

